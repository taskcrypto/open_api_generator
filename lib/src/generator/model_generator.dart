import 'dart:io';

import '../models/openapi_schema.dart';
import '../models/openapi_spec.dart';
import 'utils/name_utils.dart';
import 'utils/type_utils.dart';

class ModelGenerator {
  final OpenApiSpec spec;
  final String outputPath;

  ModelGenerator(this.spec, this.outputPath);

  Future<void> generate() async {
    final schemas = Map<String, OpenApiSchema>.from(
        spec.components?.schemas?.map((key, value) => MapEntry(
                key,
                OpenApiSchema(
                  type: value.type,
                  properties: value.properties?.map((k, v) =>
                      MapEntry(k, OpenApiSchema.fromJson(v.toJson()))),
                  items: value.items != null
                      ? OpenApiSchema.fromJson(value.items!.toJson())
                      : null,
                  required: value.required,
                ))) ??
            {});

    final modelsDir = Directory('$outputPath/models');
    if (!await modelsDir.exists()) {
      await modelsDir.create(recursive: true);
    }

    // モデルファイルを生成
    final generatedFiles = <String, String>{};
    for (final entry in schemas.entries) {
      final modelName = entry.key;
      final snakeCaseName = NameUtils.toSnakeCase(modelName);
      final modelFile = File('${modelsDir.path}/$snakeCaseName.dart');
      final buffer = StringBuffer();

      // ヘッダーコメント
      buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

      // インポート
      buffer.writeln(
          "import 'package:freezed_annotation/freezed_annotation.dart';\n");

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
      generatedFiles[entry.key] = snakeCaseName;
    }

    // ------------------------------------------------------------ 
    // models_index.dartを生成
    final indexFile = File('$outputPath/models_index.dart');
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

    // モデルのエクスポート（スキーマの順序を維持）
    for (final entry in schemas.entries) {
      final snakeCaseName = NameUtils.toSnakeCase(entry.key);
      final exportPath = snakeCaseName.toLowerCase();
      indexBuffer.writeln("export 'models/$exportPath.dart';");
    }

    await indexFile.writeAsString(indexBuffer.toString());
  }
}
