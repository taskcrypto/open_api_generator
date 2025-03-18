import 'dart:io';

import '../models/openapi_schema.dart';
import '../models/openapi_spec.dart';
import 'model_generator.dart';
import 'utils/type_utils.dart';

class RetrofitGenerator {
  final OpenApiSpec spec;
  final String outputPath;
  final String basePath;
  final Map<String, OpenApiSchema> _schemas;

  RetrofitGenerator(this.spec, this.outputPath, {this.basePath = ''})
      : _schemas = Map<String, OpenApiSchema>.from(
            spec.components?.schemas?.map((key, value) => MapEntry(
                    key,
                    OpenApiSchema(
                      type: value.type,
                      properties: value.properties?.map((k, v) =>
                          MapEntry(k, OpenApiSchema.fromJson(v.toJson()))),
                      items: value.items != null
                          ? OpenApiSchema.fromJson(value.items!.toJson())
                          : null,
                    ))) ??
                {});

  /// OpenAPI仕様からRetrofitクライアントを生成
  Future<void> generate() async {
    final modelGenerator = ModelGenerator(spec, outputPath);
    await modelGenerator.generate();

    final methodsByCategory = _generateMethods();
    final retrofitDir = Directory('$outputPath/retrofit');
    if (!await retrofitDir.exists()) {
      await retrofitDir.create(recursive: true);
    }

    // クライアントファイルを生成
    for (final entry in methodsByCategory.entries) {
      final category = entry.key;
      final methods = entry.value;
      final fileName = '${category.toLowerCase()}_client.dart';
      final filePath = '$outputPath/retrofit/$fileName';
      final file = File(filePath);

      final buffer = StringBuffer();
      buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

      // インポートを追加
      buffer.writeln("import 'package:dio/dio.dart';");
      buffer.writeln("import 'package:retrofit/retrofit.dart';");
      buffer.writeln("import '../models_index.dart';\n");

      // partディレクティブを追加
      buffer.writeln("part '${category.toLowerCase()}_client.g.dart';\n");

      // クラス定義を追加
      buffer.writeln('@RestApi()');
      buffer.writeln('abstract class ${category}Client {');
      buffer.writeln(
          '  factory ${category}Client(Dio dio, {String? baseUrl}) = _${category}Client;\n');

      // メソッドを追加
      for (final method in methods) {
        buffer.write(method);
      }

      buffer.writeln('}');

      await file.writeAsString(buffer.toString());
    }

    // index.dartを生成
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');
    for (final category in methodsByCategory.keys) {
      indexBuffer.writeln("export 'retrofit/${category.toLowerCase()}_client.dart';");
    }

    final indexFile = File('$outputPath/retrofit_index.dart');
    await indexFile.writeAsString(indexBuffer.toString());
  }

  Map<String, List<String>> _generateMethods() {
    final methodsByCategory = <String, List<String>>{};

    spec.paths.forEach((path, pathItem) {
      final operations = {
        'GET': pathItem.get,
        'POST': pathItem.post,
        'PUT': pathItem.put,
        'DELETE': pathItem.delete,
        'PATCH': pathItem.patch,
      };

      for (final httpMethod in operations.entries) {
        final operation = httpMethod.value;
        if (operation == null) continue;

        final category = _extractCategoryFromPath(path);
        methodsByCategory.putIfAbsent(category, () => []);
        final method = _generateMethod(operation, path, httpMethod.key);
        methodsByCategory[category]!.add(method);
      }
    });

    return methodsByCategory;
  }

  String _extractCategoryFromPath(String path) {
    final segments = path.split('/');
    if (segments.length > 1) {
      final category = segments[1].split('_').map((s) {
        if (s.isEmpty) return '';
        return s[0].toUpperCase() + s.substring(1).toLowerCase();
      }).join('');
      return category;
    }
    return 'Default';
  }

  String _generateMethod(Operation operation, String path, String httpMethod) {
    final methodName = _getMethodName(operation, path, httpMethod);
    final returnType = _getReturnType(operation);
    final buffer = StringBuffer();

    // アノテーション
    buffer.writeln('  @$httpMethod(\'$path\')');
    buffer.write('  Future<HttpResponse<$returnType>> $methodName({');

    // パラメータの生成
    final params = <String>[];

    // ヘッダーパラメータ
    final headerParams =
        operation.parameters?.where((p) => p.in_ == 'header') ?? [];
    for (final param in headerParams) {
      final paramName = _toCamelCase(param.name.replaceAll('-', ''));
      params.add('@Header(\'${param.name}\') required String $paramName');
    }

    // パスパラメータ
    final pathParams =
        operation.parameters?.where((p) => p.in_ == 'path') ?? [];
    for (final param in pathParams) {
      params.add('@Path(\'${param.name}\') required String ${param.name}');
    }

    // クエリパラメータ
    final queryParams =
        operation.parameters?.where((p) => p.in_ == 'query') ?? [];
    for (final param in queryParams) {
      params.add('@Query(\'${param.name}\') required String ${param.name}');
    }

    // リクエストボディ
    if (operation.requestBody?.content != null) {
      final schema = operation.requestBody!.content['application/json']?.schema;
      if (schema != null) {
        final schemaName =
            schema.ref != null ? TypeUtils.getRefName(schema.ref!) : 'dynamic';
        params.add('@Body() required $schemaName body');
      }
    }

    // パラメータを追加（改行とインデントを適切に設定）
    if (params.isNotEmpty) {
      buffer.writeln();
      buffer.writeln('    ${params.join(',\n    ')}');
      buffer.write('  ');
    }
    buffer.writeln('});\n');

    return buffer.toString();
  }

  String _getMethodName(Operation operation, String path, String httpMethod) {
    final pathSegments = path.split('/')..removeWhere((s) => s.isEmpty);

    final pathParams = pathSegments
        .where((s) => s.startsWith('{') && s.endsWith('}'))
        .map((s) => s.substring(1, s.length - 1))
        .toList();
    final cleanSegments = pathSegments
        .where((s) => !s.startsWith('{') && !s.endsWith('}'))
        .toList();

    // キャメルケースに変換
    final segments = cleanSegments.map((segment) {
      if (segment.isEmpty) return '';
      return segment[0].toUpperCase() + segment.substring(1).toLowerCase();
    }).join('');

    // パスパラメータがある場合は、"By + パラメータ名"を追加
    final suffix = pathParams.isNotEmpty
        ? 'By${pathParams.map((p) => p[0].toUpperCase() + p.substring(1).toLowerCase()).join('And')}'
        : '';

    return '${httpMethod.toLowerCase()}$segments$suffix';
  }

  String _getReturnType(Operation operation) {
    final successResponse =
        operation.responses['200'] ?? operation.responses['201'];
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

  String _toCamelCase(String input) {
    if (input.isEmpty) return input;
    final words = input.split(RegExp(r'[_\- ]'));
    final camelCase = words.map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join('');
    return camelCase[0].toLowerCase() + camelCase.substring(1);
  }
}
