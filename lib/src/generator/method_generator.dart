import 'package:code_builder/code_builder.dart' as code_builder;

import '../models/openapi_spec.dart';
import 'utils/type_utils.dart';

class MethodGenerator {
  /// GETメソッドを生成
  static code_builder.Method generateGetMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'get');
  }

  /// POSTメソッドを生成
  static code_builder.Method generatePostMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'post');
  }

  static code_builder.Method generatePutMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'put');
  }

  static code_builder.Method generateDeleteMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'delete');
  }

  /// メソッドを生成
  static code_builder.Method _generateMethod(
      Operation operation, String path, String httpMethod) {
    final methodName = _generateMethodName(httpMethod, path);
    final parameters = _generateParameters(operation.parameters ?? []);
    final requestBody = operation.requestBody;
    final responseType = _getResponseType(operation.responses);

    final methodBuilder = code_builder.MethodBuilder()
      ..name = methodName
      ..returns = code_builder.Reference('Future<$responseType>')
      ..modifier = code_builder.MethodModifier.async;

    // Add parameters
    if (parameters.isNotEmpty) {
      methodBuilder.optionalParameters.addAll(parameters);
    }

    // Add request body parameter if present
    if (requestBody?.content['application/json']?.schema != null) {
      final schema = requestBody!.content['application/json']!.schema;
      final paramType = schema.ref != null
          ? TypeUtils.getRefName(schema.ref!)
          : _getDartType(schema.type ?? 'string');
      methodBuilder.optionalParameters.add(code_builder.Parameter((p) => p
        ..name = 'body'
        ..type = code_builder.Reference(paramType)
        ..named = true
        ..required = requestBody.required ?? false));
    }

    // Build method body
    final bodyBuilder = code_builder.BlockBuilder();

    // Add query parameters
    final queryParams = operation.parameters
            ?.where((p) => p.in_ == 'query')
            .map((p) => _toCamelCase(p.name))
            .toList() ??
        [];

    if (queryParams.isNotEmpty) {
      bodyBuilder.statements.add(code_builder.Code('''
final queryParams = <String, dynamic>{
  ${queryParams.map((p) {
        final param = operation.parameters!
            .firstWhere((op) => _toCamelCase(op.name) == p);
        return param.required ? '\'$p\': $p,' : 'if ($p != null) \'$p\': $p,';
      }).join('\n  ')}
};
'''));
    }

    // Process path parameters
    var urlPath = path;
    final pathParams = RegExp(r'\{([^}]+)\}').allMatches(path);
    for (final match in pathParams) {
      final paramName = match.group(1)!;
      final camelCaseName = _toCamelCase(paramName);
      urlPath = urlPath.replaceFirst('{$paramName}', '\$$camelCaseName');
    }

    // Add URL builder
    final queryParamsArg = queryParams.isNotEmpty
        ? '.replace(queryParameters: queryParams.map((key, value) => MapEntry(key, value.toString())))'
        : '';
    bodyBuilder.statements.add(code_builder.Code('''
final uri = Uri.parse('\${baseUrl}$urlPath')$queryParamsArg;
'''));

    // Add HTTP request
    final headers = <String, String>{};
    if (requestBody != null) {
      headers['Content-Type'] = 'application/json';
    }

    // ヘッダーパラメータを追加
    final headerParams = operation.parameters
            ?.where((p) => p.in_ == 'header')
            .map((p) => _toCamelCase(p.name))
            .toList() ??
        [];

    final headersCode = headers.isEmpty && headerParams.isEmpty
        ? ''
        : ''',
      headers: {
        ${headers.entries.map((e) => '\'${e.key}\': \'${e.value}\',').join('\n        ')}
        ${headerParams.map((p) => '\'${_toHeaderCase(p)}\': $p,').join('\n        ')}
      }''';

    final bodyCode = requestBody == null
        ? ''
        : ''',
      body: jsonEncode(body.toJson())''';

    bodyBuilder.statements.add(code_builder.Code('''
final response = await http.$httpMethod(
  uri$headersCode$bodyCode
);
'''));

    // Add response handling
    bodyBuilder.statements.add(_generateResponseHandling(responseType));

    methodBuilder.body = bodyBuilder.build();

    return methodBuilder.build();
  }

  static String _generateMethodName(String method, String path) {
    final segments = path.split('/')..removeWhere((s) => s.isEmpty);

    if (segments.isEmpty) {
      return method.toLowerCase();
    }

    // パスセグメントを処理（パラメータも含める）
    final parts = segments.map((s) {
      if (s.startsWith('{') && s.endsWith('}')) {
        // パスパラメータの場合は{}を除去して最初の文字を大文字に
        final paramName = s.substring(1, s.length - 1);
        return _capitalize(paramName);
      }
      return _toCamelCase(s);
    }).toList();

    String methodName = '';

    // 最後のセグメントから順に追加
    for (var i = parts.length - 1; i >= 0; i--) {
      if (methodName.isEmpty) {
        methodName = parts[i];
      } else {
        methodName = parts[i] + _capitalize(methodName);
      }
    }

    // HTTPメソッドを先頭に追加（小文字）
    return method.toLowerCase() + _capitalize(methodName);
  }

  static String _capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }

  static String _toCamelCase(String input) {
    final words = input.split(RegExp(r'[_-]|(?=[A-Z])'));
    if (words.isEmpty) return '';

    final first = words[0].toLowerCase();
    final rest = words.sublist(1).map(_capitalize).join('');
    return first + rest;
  }

  static List<code_builder.Parameter> _generateParameters(
      List<Parameter> parameters) {
    final params = <code_builder.Parameter>[];

    for (final param in parameters) {
      final type = param.schema.type ?? 'string';
      final isArray = type == 'array';
      final itemType = param.schema.items?.type ?? 'string';

      var dartType = _getDartType(type, itemType);
      if (isArray) {
        dartType = 'List<${_getDartType(itemType)}>';
      }
      if (!param.required && param.in_ != 'path') {
        dartType = '$dartType?';
      }

      final camelCaseName = _toCamelCase(param.name);

      params.add(code_builder.Parameter((p) => p
        ..name = camelCaseName
        ..type = code_builder.refer(dartType)
        ..named = true
        ..required = param.required == true || param.in_ == 'path'));
    }

    return params;
  }

  static code_builder.Code _generateQueryParameters(
      List<Parameter> parameters) {
    final queryParams = parameters.where((p) => p.in_ == 'query').map((p) {
      final name = _toCamelCase(p.name);
      final isArray = p.schema.type == 'array';
      if (isArray) {
        return "if ($name != null) '${p.name}': $name.join(','),";
      }
      return "if ($name != null) '${p.name}': $name.toString(),";
    }).join('\n');

    return code_builder.Code('''
final queryParams = <String, dynamic>{
  $queryParams
};
''');
  }

  static code_builder.Code _generateUrlBuilder(String path) {
    final pathParams = RegExp(r'\{([^}]+)\}').allMatches(path);
    var urlPath = path;
    for (final match in pathParams) {
      final paramName = match.group(1)!;
      final camelCaseName = _toCamelCase(paramName);
      urlPath = urlPath.replaceFirst('{$paramName}', '\$$camelCaseName');
    }
    return code_builder.Code('''
final uri = Uri.parse('\${baseUrl}$urlPath').replace(queryParameters: queryParams);
''');
  }

  static String _getResponseType(Map<String, Response> responses) {
    final successResponse = responses['200'] ?? responses['201'];
    if (successResponse?.content?['application/json']?.schema != null) {
      final schema = successResponse!.content!['application/json']!.schema;
      if (schema.type == 'array' && schema.items?.ref != null) {
        final itemType = TypeUtils.getRefName(schema.items!.ref!);
        return 'List<$itemType>';
      } else if (schema.ref != null) {
        return TypeUtils.getRefName(schema.ref!);
      }
    }
    return 'void';
  }

  static Map<int, String> _getErrorResponses(Map<String, Response> responses) {
    final errorResponses = <int, String>{};
    for (final entry in responses.entries) {
      final statusCode = int.tryParse(entry.key);
      if (statusCode != null && statusCode >= 400) {
        final response = entry.value;
        if (response.content?['application/json']?.schema.ref != null) {
          final ref = response.content!['application/json']!.schema.ref!;
          errorResponses[statusCode] = TypeUtils.getRefName(ref);
        }
      }
    }
    return errorResponses;
  }

  static String _generateErrorHandling(Map<int, String> errorResponses) {
    final buffer = StringBuffer();

    for (final entry in errorResponses.entries) {
      buffer.writeln('''
if (response.statusCode == ${entry.key}) {
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  throw ${entry.value}.fromJson(json);
}''');
    }

    buffer.writeln('''
throw ApiException(
  response.statusCode,
  'Unexpected error occurred: \${response.body}',
);''');

    return buffer.toString();
  }

  static code_builder.Code _generateResponseHandling(String responseType) {
    if (responseType.startsWith('List<')) {
      return code_builder.Code('''
final json = jsonDecode(response.body) as List<dynamic>;
return json.map((e) => ${responseType.substring(5, responseType.length - 1)}.fromJson(e as Map<String, dynamic>)).toList();
''');
    } else if (responseType != 'void') {
      return code_builder.Code('''
final json = jsonDecode(response.body) as Map<String, dynamic>;
return $responseType.fromJson(json);
''');
    } else {
      return code_builder.Code('''
return;
''');
    }
  }

  static String _getDartType(String type, [String itemType = '']) {
    switch (type.toLowerCase()) {
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'array':
        return 'List<${_getDartType(itemType)}>';
      default:
        return 'String';
    }
  }

  // ヘッダー名を適切な形式に変換する
  static String _toHeaderCase(String input) {
    if (input == 'xAPIKEY') return 'X-API-KEY';
    final words = input.split(RegExp(r'(?=[A-Z])'));
    return words
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join('-');
  }
}
