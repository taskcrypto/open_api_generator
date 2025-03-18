import 'package:code_builder/code_builder.dart' as code_builder;

import '../models/openapi_spec.dart';
import 'utils/name_utils.dart';
import 'utils/type_utils.dart';

/// OpenAPI仕様のパスとオペレーションからDartのメソッドを生成するクラス
///
/// このクラスは以下の機能を提供します：
/// - HTTPメソッド（GET, POST, PUT, DELETE）に対応するメソッドの生成
/// - パラメータ（クエリ、ヘッダー、パス、リクエストボディ）の適切な処理
/// - レスポンスの型安全な変換
/// - Dioを使用したHTTPリクエストの実装
///
/// 生成されるメソッドの例：
/// ```dart
/// Future<List<Order>> getOrders({
///   String? status,
///   @Header('X-API-KEY') required String apiKey,
/// }) async {
///   final queryParams = <String, dynamic>{
///     if (status != null) 'status': status,
///   };
///   final headers = <String, dynamic>{
///     'X-API-KEY': apiKey,
///   };
///   final response = await _dio.get(
///     '${baseUrl}/orders',
///     queryParameters: queryParams,
///     options: Options(headers: headers),
///   );
///   final data = response.data as List<dynamic>;
///   return data.map((e) => Order.fromJson(e as Map<String, dynamic>)).toList();
/// }
/// ```
class MethodGenerator {
  /// GETメソッドを生成
  ///
  /// [path] APIエンドポイントのパス
  /// [operation] OpenAPIのオペレーション定義
  ///
  /// 戻り値：
  /// - 生成されたGETメソッドのコードビルダー
  static code_builder.Method generateGetMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'get');
  }

  /// POSTメソッドを生成
  ///
  /// [path] APIエンドポイントのパス
  /// [operation] OpenAPIのオペレーション定義
  ///
  /// 戻り値：
  /// - 生成されたPOSTメソッドのコードビルダー
  static code_builder.Method generatePostMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'post');
  }

  /// PUTメソッドを生成
  ///
  /// [path] APIエンドポイントのパス
  /// [operation] OpenAPIのオペレーション定義
  ///
  /// 戻り値：
  /// - 生成されたPUTメソッドのコードビルダー
  static code_builder.Method generatePutMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'put');
  }

  /// DELETEメソッドを生成
  ///
  /// [path] APIエンドポイントのパス
  /// [operation] OpenAPIのオペレーション定義
  ///
  /// 戻り値：
  /// - 生成されたDELETEメソッドのコードビルダー
  static code_builder.Method generateDeleteMethod(
      String path, Operation operation) {
    return _generateMethod(operation, path, 'delete');
  }

  /// HTTPメソッドを生成
  ///
  /// [operation] OpenAPIのオペレーション定義
  /// [path] APIエンドポイントのパス
  /// [httpMethod] HTTPメソッド（get, post, put, delete）
  ///
  /// 戻り値：
  /// - 生成されたメソッドのコードビルダー
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
            .map((p) => NameUtils.toCamelCase(p.name))
            .toList() ??
        [];

    if (queryParams.isNotEmpty) {
      bodyBuilder.statements.add(code_builder.Code('''
final queryParams = <String, dynamic>{
  ${queryParams.map((p) {
        final param = operation.parameters!
            .firstWhere((op) => NameUtils.toCamelCase(op.name) == p);
        return param.required ? '\'$p\': $p,' : 'if ($p != null) \'$p\': $p,';
      }).join('\n  ')}
};
'''));
    }

    // Add headers
    final headerParams = operation.parameters
            ?.where((p) => p.in_ == 'header')
            .map((p) => NameUtils.toCamelCase(p.name))
            .toList() ??
        [];

    if (headerParams.isNotEmpty) {
      bodyBuilder.statements.add(code_builder.Code('''
final headers = <String, dynamic>{
  ${headerParams.map((p) {
        final param = operation.parameters!
            .firstWhere((op) => NameUtils.toCamelCase(op.name) == p);
        return param.required
            ? '\'${_toHeaderCase(p)}\': $p,'
            : 'if ($p != null) \'${_toHeaderCase(p)}\': $p,';
      }).join('\n  ')}
};
'''));
    }

    // Add Dio request
    final dioOptions = <String>[];
    if (queryParams.isNotEmpty) {
      dioOptions.add('queryParameters: queryParams');
    }
    if (headerParams.isNotEmpty) {
      dioOptions.add('options: Options(headers: headers)');
    }
    if (requestBody != null) {
      dioOptions.add('data: body.toJson()');
    }

    final dioOptionsStr =
        dioOptions.isEmpty ? '' : ', ${dioOptions.join(', ')}';

    bodyBuilder.statements.add(code_builder.Code('''
final response = await _dio.$httpMethod('\${baseUrl}$path'$dioOptionsStr);
'''));

    // Add response handling
    bodyBuilder.statements.add(_generateResponseHandling(responseType));

    methodBuilder.body = bodyBuilder.build();

    return methodBuilder.build();
  }

  /// メソッド名を生成
  ///
  /// [method] HTTPメソッド
  /// [path] APIエンドポイントのパス
  ///
  /// 戻り値：
  /// - 生成されたメソッド名
  static String _generateMethodName(String method, String path) {
    return NameUtils.generateMethodName(
      path,
      method,
      options: const MethodNameOptions(
        reverseSegments: true,
        includePathParams: false,
      ),
    );
  }

  /// パラメータを生成
  ///
  /// [parameters] OpenAPIのパラメータ定義のリスト
  ///
  /// 戻り値：
  /// - 生成されたパラメータのリスト
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

      final camelCaseName = NameUtils.toCamelCase(param.name);

      params.add(code_builder.Parameter((p) => p
        ..name = camelCaseName
        ..type = code_builder.refer(dartType)
        ..named = true
        ..required = param.required == true || param.in_ == 'path'));
    }

    return params;
  }

  /// レスポンスの型を取得
  ///
  /// [responses] OpenAPIのレスポンス定義
  ///
  /// 戻り値：
  /// - レスポンスの型名
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

  /// レスポンス処理のコードを生成
  ///
  /// [responseType] レスポンスの型名
  ///
  /// 戻り値：
  /// - レスポンス処理のコードビルダー
  static code_builder.Code _generateResponseHandling(String responseType) {
    if (responseType.startsWith('List<')) {
      final itemType = responseType.substring(5, responseType.length - 1);
      return code_builder.Code('''
final data = response.data as List<dynamic>;
return data.map((e) => $itemType.fromJson(e as Map<String, dynamic>)).toList();
''');
    } else if (responseType != 'void') {
      return code_builder.Code('''
final data = response.data as Map<String, dynamic>;
return $responseType.fromJson(data);
''');
    } else {
      return code_builder.Code('return;');
    }
  }

  /// OpenAPIの型をDartの型に変換
  ///
  /// [type] OpenAPIの型名
  /// [itemType] 配列の場合の要素の型名
  ///
  /// 戻り値：
  /// - Dartの型名
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

  /// ヘッダー名を適切な形式に変換
  ///
  /// [input] 変換する文字列
  ///
  /// 戻り値：
  /// - 変換されたヘッダー名
  static String _toHeaderCase(String input) {
    if (input == 'xAPIKEY') return 'X-API-KEY';
    final words = input.split(RegExp(r'(?=[A-Z])'));
    return words.map((word) => NameUtils.capitalize(word)).join('-');
  }
}
