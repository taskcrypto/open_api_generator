import 'dart:io';

import '../models/openapi_schema.dart';
import '../models/openapi_spec.dart';
import 'utils/name_utils.dart';
import 'utils/type_utils.dart';

class ModelGenerator {
  final OpenApiSpec spec;
  final String outputPath;

  ModelGenerator(this.spec, this.outputPath);

  Future<void> generate({required String apiName}) async {
    // 既存のgeneratorディレクトリを削除
    final generatorDir = Directory('$outputPath/generator');
    if (await generatorDir.exists()) {
      await generatorDir.delete(recursive: true);
    }

    // 既存のmodelsディレクトリを削除
    final modelsDir = Directory('$outputPath/models');
    if (await modelsDir.exists()) {
      await modelsDir.delete(recursive: true);
    }

    // modelsディレクトリを作成
    await modelsDir.create(recursive: true);

    // enumsディレクトリを作成
    final enumsDir = Directory('$outputPath/models/enums');
    if (!await enumsDir.exists()) {
      await enumsDir.create(recursive: true);
    }

    // enumを生成
    await _generateEnums(enumsDir);

    final schemas = Map<String, OpenApiSchema>.from(
        spec.components?.schemas?.map((key, value) => MapEntry(
                key, // プレフィックスを削除
                OpenApiSchema(
                  type: value.type,
                  properties: value.properties?.map((k, v) => MapEntry(
                      k,
                      OpenApiSchema(
                        type: v.type,
                        properties: v.properties?.map((pk, pv) =>
                            MapEntry(pk, OpenApiSchema.fromJson(pv.toJson()))),
                        items: v.items != null
                            ? OpenApiSchema.fromJson(v.items!.toJson())
                            : null,
                        enum_: v.enum_,
                        required: v.required,
                      ))),
                  items: value.items != null
                      ? OpenApiSchema.fromJson(value.items!.toJson())
                      : null,
                  enum_: value.enum_,
                  required: value.required,
                ))) ??
            {});

    // モデルをカテゴリごとに分類
    final modelsByCategory = <String, Map<String, OpenApiSchema>>{};
    for (final entry in schemas.entries) {
      final modelName = entry.key;
      // enumの場合はスキップ
      if (entry.value.enum_?.isNotEmpty ?? false) {
        continue;
      }
      final category = _extractCategoryFromRef(modelName);
      modelsByCategory.putIfAbsent(category, () => {});
      modelsByCategory[category]![modelName] = entry.value;
    }

    // カテゴリごとのディレクトリを作成
    for (final category in modelsByCategory.keys) {
      final categoryDir = Directory('$outputPath/models/$category');
      if (!await categoryDir.exists()) {
        await categoryDir.create(recursive: true);
      }

      // カテゴリ内のモデルファイルを生成
      for (final entry in modelsByCategory[category]!.entries) {
        final modelName = entry.key;
        final snakeCaseName = NameUtils.toSnakeCase(modelName);
        final modelFile = File('${categoryDir.path}/$snakeCaseName.dart');
        final buffer = StringBuffer();

        // ヘッダーコメント
        buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

        buffer.writeln('// ignore_for_file: invalid_annotation_target');

        // インポート
        buffer.writeln(
            "import 'package:freezed_annotation/freezed_annotation.dart';\n");

        // enumのインポートを追加
        final enumImports = <String>{};
        entry.value.properties?.forEach((propName, propSchema) {
          if (propSchema.enum_?.isNotEmpty ?? false) {
            final enumName =
                '${NameUtils.toPascalCase(modelName)}${NameUtils.toPascalCase(propName)}Type';
            final enumSnakeCaseName = NameUtils.toSnakeCase(enumName);
            enumImports.add("import '../enums/$enumSnakeCaseName.dart';");
          }
        });
        for (final enumImport in enumImports) {
          buffer.writeln(enumImport);
        }
        buffer.writeln('');

        // partディレクティブ
        buffer.writeln("part '$snakeCaseName.freezed.dart';");
        buffer.writeln("part '$snakeCaseName.g.dart';\n");

        // クラス定義
        buffer.writeln('@freezed');
        buffer.writeln('class $modelName with _\$$modelName {');
        buffer.writeln('  const factory $modelName({');

        // プロパティ
        entry.value.properties?.forEach((propName, propSchema) {
          final isRequired = entry.value.required?.contains(propName) ?? false;
          final propType = TypeUtils.getTypeFromSchema(
            propSchema,
            required: isRequired,
            parentName: modelName,
            propertyName: propName,
          );
          final camelCasePropName = NameUtils.toCamelCase(propName);
          buffer.writeln('    @JsonKey(name: \'$propName\')');
          buffer.writeln(
              '    ${isRequired ? 'required ' : ''}$propType $camelCasePropName,');
        });

        buffer.writeln('  }) = _$modelName;\n');

        // fromJsonファクトリ
        buffer.writeln(
            '  factory $modelName.fromJson(Map<String, dynamic> json) =>');
        buffer.writeln('      _\$${modelName}FromJson(json);');
        buffer.writeln('}');

        await modelFile.writeAsString(buffer.toString());
      }
    }

    // models_index.dartを生成
    final indexFile = File('$outputPath/models_index.dart');
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

    // カテゴリごとにエクスポート
    for (final category in modelsByCategory.keys) {
      indexBuffer.writeln('// $category models');
      for (final modelName in modelsByCategory[category]!.keys) {
        final snakeCaseName = NameUtils.toSnakeCase(modelName);
        indexBuffer.writeln("export 'models/$category/$snakeCaseName.dart';");
      }
      indexBuffer.writeln('');
    }

    // enumのエクスポートを追加
    indexBuffer.writeln('// enums');
    final enumFiles = enumsDir.listSync().whereType<File>();
    for (final enumFile in enumFiles) {
      final fileName = enumFile.uri.pathSegments.last;
      indexBuffer.writeln("export 'models/enums/$fileName';");
    }

    await indexFile.writeAsString(indexBuffer.toString());
  }

  Future<void> _generateEnums(Directory enumsDir) async {
    print('Generating enums...');
    // スキーマからenumを収集
    final enumSchemas = <String, OpenApiSchema>{};
    spec.components?.schemas?.forEach((key, schema) {
      if (schema.enum_?.isNotEmpty ?? false) {
        print('Found enum schema: $key');
        enumSchemas[key] = OpenApiSchema(
          type: schema.type,
          properties: schema.properties
              ?.map((k, v) => MapEntry(k, OpenApiSchema.fromJson(v.toJson()))),
          items: schema.items != null
              ? OpenApiSchema.fromJson(schema.items!.toJson())
              : null,
          enum_: schema.enum_,
          required: schema.required,
        );
      }
    });

    // プロパティからenumを収集
    spec.components?.schemas?.forEach((key, schema) {
      schema.properties?.forEach((propName, propSchema) {
        if (propSchema.enum_?.isNotEmpty ?? false) {
          final enumName =
              '${NameUtils.toPascalCase(key)}${NameUtils.toPascalCase(propName)}Type';
          print('Found enum property: $enumName in $key.$propName');
          enumSchemas[enumName] = OpenApiSchema(
            type: propSchema.type,
            properties: propSchema.properties?.map(
                (k, v) => MapEntry(k, OpenApiSchema.fromJson(v.toJson()))),
            items: propSchema.items != null
                ? OpenApiSchema.fromJson(propSchema.items!.toJson())
                : null,
            enum_: propSchema.enum_,
            required: propSchema.required,
          );
        }
      });
    });

    print('Found ${enumSchemas.length} enums to generate');

    // enumファイルを生成
    for (final entry in enumSchemas.entries) {
      final enumName = entry.key;
      final schema = entry.value;
      final snakeCaseName = NameUtils.toSnakeCase(enumName);
      final enumFile = File('${enumsDir.path}/$snakeCaseName.dart');
      print('Generating enum file: $snakeCaseName.dart');
      final buffer = StringBuffer();

      buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');
      buffer.writeln(
          "import 'package:freezed_annotation/freezed_annotation.dart';\n");

      buffer.writeln('@JsonEnum()');
      buffer.writeln('enum $enumName {');

      schema.enum_?.forEach((value) {
        final camelCaseValue = NameUtils.toCamelCase(value);
        buffer.writeln("  @JsonValue('$value')");
        buffer.writeln('  $camelCaseValue(\'$value\'),\n');
      });

      // $unknownケースを追加
      buffer.writeln(
          '  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.');
      buffer.writeln('  \$unknown(null);\n');

      buffer.writeln('  const $enumName(this.json);\n');

      buffer.writeln(
          '  factory $enumName.fromJson(String json) => values.firstWhere(');
      buffer.writeln('        (e) => e.json == json,');
      buffer.writeln('        orElse: () => \$unknown,');
      buffer.writeln('      );\n');

      buffer.writeln('  final String? json;');
      buffer.writeln('}');

      await enumFile.writeAsString(buffer.toString());
      print('Generated enum file: $snakeCaseName.dart');
    }
    print('Enum generation completed');
  }

  String _extractCategoryFromRef(String modelName) {
    // スキーマの参照パスからカテゴリを抽出
    // 例: "RequestToken" -> "auth" (トークン関連のスキーマはauthタグに属する)
    // 例: "OrderSuccess" -> "order" (注文関連のスキーマはorderタグに属する)

    // APIパスからスキーマが使用されているエンドポイントを探す
    for (final pathEntry in spec.paths.entries) {
      final pathItem = pathEntry.value;
      final operations = [
        if (pathItem.get != null) pathItem.get!,
        if (pathItem.post != null) pathItem.post!,
        if (pathItem.put != null) pathItem.put!,
        if (pathItem.delete != null) pathItem.delete!,
      ];

      for (final operation in operations) {
        // リクエストボディのスキーマをチェック
        final requestSchema =
            operation.requestBody?.content['application/json']?.schema;
        if (requestSchema?.ref?.contains(modelName) == true) {
          return operation.tags?.first.toLowerCase() ?? 'common';
        }

        // レスポンスのスキーマをチェック
        for (final response in operation.responses.values) {
          final responseSchema = response.content?['application/json']?.schema;
          if (responseSchema?.ref?.contains(modelName) == true) {
            return operation.tags?.first.toLowerCase() ?? 'common';
          }
        }
      }
    }

    // モデル名からカテゴリを推測
    if (modelName.toLowerCase().contains('request')) return 'request';
    if (modelName.toLowerCase().contains('response')) return 'response';
    if (modelName.toLowerCase().contains('error')) return 'common';

    // 上記のいずれにも該当しない場合
    return 'common';
  }

  String _generateProperty(
      String propertyName, OpenApiSchema schema, List<String> required) {
    final isRequired = required.contains(propertyName);
    final isNullable = !isRequired;
    final type = _getPropertyType(schema);
    final jsonKey = '@JsonKey(name: \'$propertyName\')';
    final requiredKeyword = isRequired ? 'required ' : '';
    final nullableSymbol = isNullable ? '?' : '';

    return '''
    $jsonKey
    ${requiredKeyword}$type$nullableSymbol $propertyName,''';
  }

  String _getPropertyType(OpenApiSchema schema) {
    // enum型の場合は、対応するenum型を返す
    if (schema.enum_?.isNotEmpty ?? false) {
      final enumName = '${NameUtils.toPascalCase(schema.type ?? '')}Type';
      return enumName;
    }

    if (schema.type == 'array') {
      final itemType =
          schema.items != null ? _getPropertyType(schema.items!) : 'dynamic';
      return 'List<$itemType>';
    }

    switch (schema.type) {
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'string':
        return 'String';
      case 'object':
        return 'Map<String, dynamic>';
      default:
        return 'dynamic';
    }
  }
}
