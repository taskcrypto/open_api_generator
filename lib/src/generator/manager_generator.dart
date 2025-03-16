import 'package:code_builder/code_builder.dart' as code_builder;

import '../models/openapi_spec.dart';
import 'utils/type_utils.dart';

class ManagerGenerator {
  static code_builder.Class generateManager(String name, OpenApiSpec spec) {
    final clientName = '${name}Client';
    final methods = _generateManagerMethods(name, spec);

    // メソッドが生成されているかどうかをログ出力
    print('Generated methods for $name: ${methods.length}');

    return code_builder.Class((c) => c
      ..name = '${name}Manager'
      ..fields.add(code_builder.Field((f) => f
        ..name = '_client'
        ..type = code_builder.refer(clientName)
        ..modifier = code_builder.FieldModifier.final$))
      ..constructors.add(code_builder.Constructor((constructor) => constructor
        ..requiredParameters.add(code_builder.Parameter((p) => p
          ..name = 'baseUrl'
          ..type = code_builder.refer('String')))
        ..initializers
            .add(code_builder.Code('_client = $clientName(baseUrl)'))))
      ..methods.addAll(methods));
  }

  static List<code_builder.Method> _generateManagerMethods(
      String name, OpenApiSpec spec) {
    final methods = <code_builder.Method>[];
    final paths = spec.paths;
    final targetTag = name.toLowerCase();

    for (final pathEntry in paths.entries) {
      final path = pathEntry.key;
      final pathItem = pathEntry.value;

      // GETメソッドの処理
      if (pathItem.get?.tags?.any((tag) => tag.toLowerCase() == targetTag) ==
          true) {
        methods.add(_generateManagerMethod('get', path, pathItem.get!));
      }

      // POSTメソッドの処理
      if (pathItem.post?.tags?.any((tag) => tag.toLowerCase() == targetTag) ==
          true) {
        methods.add(_generateManagerMethod('post', path, pathItem.post!));
      }

      // PUTメソッドの処理
      if (pathItem.put?.tags?.any((tag) => tag.toLowerCase() == targetTag) ==
          true) {
        methods.add(_generateManagerMethod('put', path, pathItem.put!));
      }

      // DELETEメソッドの処理
      if (pathItem.delete?.tags?.any((tag) => tag.toLowerCase() == targetTag) ==
          true) {
        methods.add(_generateManagerMethod('delete', path, pathItem.delete!));
      }
    }

    return methods;
  }

  static code_builder.Method _generateManagerMethod(
      String httpMethod, String path, Operation operation) {
    final methodName = operation.operationId;
    final parameters = _generateParameters(operation.parameters ?? []);
    final responseType = _getResponseType(operation.responses);
    final requestBody = operation.requestBody;

    // リクエストボディがある場合はパラメータを追加
    if (requestBody?.content['application/json']?.schema.ref != null) {
      final bodyType = TypeUtils.getRefName(
          requestBody!.content['application/json']!.schema.ref!);
      parameters.add(code_builder.Parameter((p) => p
        ..name = 'body'
        ..type = code_builder.refer(bodyType)
        ..named = true
        ..required = true));
    }

    // メソッドのドキュメントを生成
    final docs = StringBuffer();

    // サマリーと説明を追加
    if (operation.summary != null) {
      docs.writeln('/// ${_escapeDocComment(operation.summary!)}');
    }
    if (operation.description != null) {
      docs.writeln('///');
      docs.writeln('/// ${_escapeDocComment(operation.description!)}');
    }

    // パラメータの説明を追加
    if (operation.parameters?.isNotEmpty == true) {
      docs.writeln('///');
      docs.writeln('/// Parameters:');
      for (final param in operation.parameters!) {
        final paramName = _toCamelCase(param.name);
        if (param.description != null) {
          docs.writeln(
              '/// - $paramName: ${_escapeDocComment(param.description!)}');
        } else {
          docs.writeln('/// - $paramName');
        }
      }
    }

    // リクエストボディの説明を追加
    if (requestBody != null && requestBody.description != null) {
      docs.writeln('///');
      docs.writeln('/// Request body:');
      docs.writeln('/// - ${_escapeDocComment(requestBody.description!)}');
    }

    // レスポンスの説明を追加
    if (operation.responses.isNotEmpty) {
      docs.writeln('///');
      docs.writeln('/// Responses:');
      for (final entry in operation.responses.entries) {
        docs.writeln(
            '/// - ${entry.key}: ${_escapeDocComment(entry.value.description)}');
      }
    }

    return code_builder.Method((m) => m
      ..docs.add(docs.toString())
      ..name = methodName
      ..modifier = code_builder.MethodModifier.async
      ..returns = code_builder.refer('Future<$responseType>')
      ..optionalParameters.addAll(parameters)
      ..body = code_builder.Code(
          'return _client.$methodName(${_generateMethodCall(parameters)});'));
  }

  /// ドキュメントコメントのエスケープ処理
  static String _escapeDocComment(String text) {
    return text
        .replaceAll('<br>', '\n///')
        .replaceAll('\n', '\n///')
        .replaceAll('*/', '*&#47;')
        .trim();
  }

  static String _generateMethodName(String method, String path) {
    final segments = path.split('/')
      ..removeWhere((s) => s.isEmpty || s.startsWith('{') || s.endsWith('}'));

    final pathPart = segments.map((s) {
      final words = s.split(RegExp(r'[_-]|(?=[A-Z])'));
      return words.map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }).join('');
    }).join('');

    return method.toLowerCase() + pathPart;
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

      final camelCaseName = _toCamelCase(param.name);

      params.add(code_builder.Parameter((p) => p
        ..name = camelCaseName
        ..type = code_builder.refer(dartType)
        ..named = true
        ..required = param.required == true || param.in_ == 'path'));
    }

    return params;
  }

  static String _generateMethodCall(List<code_builder.Parameter> parameters) {
    return parameters.map((p) => '${p.name}: ${p.name}').join(', ');
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

  static String _toCamelCase(String input) {
    final words = input.split(RegExp(r'[_-]|(?=[A-Z])'));
    final first = words[0].toLowerCase();
    final rest = words.sublist(1).map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join('');
    return first + rest;
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
}
