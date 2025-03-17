import 'dart:io';

import 'package:code_builder/code_builder.dart' as code_builder;

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
      buffer.writeln("import '../models/index.dart';");

      // partディレクティブを追加
      buffer.writeln("part '${category.toLowerCase()}_client.g.dart';\n");

      // クラス定義を追加
      buffer.writeln('@RestApi()');
      buffer.writeln('abstract class ${category}Client {');
      buffer.writeln(
          '  factory ${category}Client(Dio dio, {String? baseUrl}) = _${category}Client;\n');

      // メソッドを追加
      for (final method in methods) {
        buffer.writeln('  ${method.accept(code_builder.DartEmitter())}\n');
      }

      buffer.writeln('}');

      await file.writeAsString(buffer.toString());
    }

    // index.dartを生成
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');
    for (final category in methodsByCategory.keys) {
      indexBuffer.writeln("export '${category.toLowerCase()}_client.dart';");
    }

    final indexFile = File('$outputPath/retrofit/index.dart');
    await indexFile.writeAsString(indexBuffer.toString());

    // モデルインデックスファイルを生成
    final modelIndexFile = File('$outputPath/models_index.dart');
    final modelIndexBuffer = StringBuffer();
    modelIndexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');
    for (final entry in _schemas.entries) {
      modelIndexBuffer
          .writeln('export \'models/${_toSnakeCase(entry.key)}.dart\';');
    }
    await modelIndexFile.writeAsString(modelIndexBuffer.toString());
  }

  Map<String, List<code_builder.Method>> _generateMethods() {
    final methodsByCategory = <String, List<code_builder.Method>>{};

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
    print('Path: $path, Segments: $segments'); // デバッグ用
    if (segments.length > 1) {
      final category = segments[1].split('_').map((s) {
        if (s.isEmpty) return '';
        return s[0].toUpperCase() + s.substring(1).toLowerCase();
      }).join('');
      print('Category: $category'); // デバッグ用
      return category;
    }
    return 'Default';
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

  code_builder.Method _generateMethod(
      Operation operation, String path, String httpMethod) {
    final methodName = _getMethodName(operation, path, httpMethod);
    final returnType = _getReturnType(operation);
    final parameters = <code_builder.Parameter>[];

    // Add header parameters
    final headerParams =
        operation.parameters?.where((p) => p.in_ == 'header') ?? [];
    for (final param in headerParams) {
      final paramName = _toCamelCase(param.name.replaceAll('-', ''));
      parameters.add(code_builder.Parameter((p) => p
        ..name = paramName
        ..type = code_builder.refer('String')
        ..named = true
        ..required = true
        ..annotations.add(code_builder
            .refer('Header', 'package:retrofit/retrofit.dart')
            .call([code_builder.literalString(param.name)]))));
    }

    // Add path parameters
    final pathParams =
        operation.parameters?.where((p) => p.in_ == 'path') ?? [];
    for (final param in pathParams) {
      parameters.add(code_builder.Parameter((p) => p
        ..name = param.name
        ..type = code_builder.refer('String')
        ..named = true
        ..required = true
        ..annotations.add(code_builder
            .refer('Path', 'package:retrofit/retrofit.dart')
            .call([code_builder.literalString(param.name)]))));
    }

    // Add query parameters
    final queryParams =
        operation.parameters?.where((p) => p.in_ == 'query') ?? [];
    for (final param in queryParams) {
      parameters.add(code_builder.Parameter((p) => p
        ..name = param.name
        ..type = code_builder.refer('String')
        ..named = true
        ..required = true
        ..annotations.add(code_builder
            .refer('Query', 'package:retrofit/retrofit.dart')
            .call([code_builder.literalString(param.name)]))));
    }

    // Add request body
    if (operation.requestBody?.content != null) {
      final schema = operation.requestBody!.content['application/json']?.schema;
      if (schema != null) {
        final schemaName =
            schema.ref != null ? TypeUtils.getRefName(schema.ref!) : 'dynamic';
        parameters.add(code_builder.Parameter((p) => p
          ..name = 'body'
          ..type = code_builder.refer(schemaName)
          ..named = true
          ..required = true
          ..annotations.add(code_builder
              .refer('Body', 'package:retrofit/retrofit.dart')
              .call([]))));
      }
    }

    return code_builder.Method((m) => m
      ..name = methodName
      ..returns = code_builder.refer('Future<HttpResponse<$returnType>>')
      ..annotations.add(code_builder
          .refer(httpMethod, 'package:retrofit/retrofit.dart')
          .call([code_builder.literalString(path)]))
      ..optionalParameters.addAll(parameters)
      ..lambda = false
      ..body = code_builder.Code(''));
  }

  String _getModelName(String schemaName) {
    return schemaName.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  }

  String _getDartType(OpenApiSchema schema) {
    if (schema.type == 'string') {
      return 'String';
    } else if (schema.type == 'integer') {
      return 'int';
    } else if (schema.type == 'number') {
      return 'double';
    } else if (schema.type == 'boolean') {
      return 'bool';
    } else if (schema.type == 'array') {
      final itemType = _getDartType(schema.items!);
      return 'List<$itemType>';
    } else if (schema.type == 'object') {
      if (schema.title != null) {
        return _getModelName(schema.title!);
      }
      return 'Map<String, dynamic>';
    }
    return 'dynamic';
  }

  void _generateModels(String outputDir) {
    final modelsDir = Directory('$outputDir/models');
    if (!modelsDir.existsSync()) {
      modelsDir.createSync(recursive: true);
    }

    // モデルファイルを生成
    for (final schema in _schemas.entries) {
      final modelName = _getModelName(schema.key);
      final modelFile =
          File('${modelsDir.path}/${modelName.toLowerCase()}.dart');
      final buffer = StringBuffer();

      // ヘッダーコメント
      buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

      // インポート
      buffer.writeln(
          "import 'package:freezed_annotation/freezed_annotation.dart';\n");

      // partディレクティブ
      buffer.writeln("part '${modelName.toLowerCase()}.freezed.dart';");
      buffer.writeln("part '${modelName.toLowerCase()}.g.dart';\n");

      // クラス定義
      buffer.writeln('@freezed');
      buffer.writeln('class $modelName with _\$$modelName {');
      buffer.writeln('  const factory $modelName({');

      // プロパティ
      schema.value.properties?.forEach((propName, propSchema) {
        final propType = _getDartType(propSchema);
        buffer.writeln('    @JsonKey(name: \'$propName\')');
        buffer.writeln('    required $propType $propName,');
      });

      buffer.writeln('  }) = _$modelName;\n');

      // fromJsonファクトリ
      buffer.writeln(
          '  factory $modelName.fromJson(Map<String, dynamic> json) =>');
      buffer.writeln('      _\$${modelName}FromJson(json);');
      buffer.writeln('}');

      modelFile.writeAsString(buffer.toString());
    }

    // index.dartを生成
    final indexFile = File('$outputDir/models/index.dart');
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

    // モデルのエクスポート
    for (final schema in _schemas.entries) {
      final modelName = _getModelName(schema.key);
      indexBuffer.writeln("export '${modelName.toLowerCase()}.dart';");
    }

    indexFile.writeAsString(indexBuffer.toString());
  }

  String _toSnakeCase(String input) {
    if (input.isEmpty) return input;
    final words = input.split(RegExp(r'[_\- ]'));
    final snakeCase = words.map((word) {
      if (word.isEmpty) return '';
      return word.toLowerCase();
    }).join('_');
    return snakeCase;
  }
}
