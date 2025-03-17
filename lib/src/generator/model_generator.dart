import 'dart:io';

import '../models/openapi_schema.dart';
import '../models/openapi_spec.dart';

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
                ))) ??
            {});

    final modelsDir = Directory('$outputPath/models');
    if (!await modelsDir.exists()) {
      await modelsDir.create(recursive: true);
    }

    // モデルファイルを生成
    for (final entry in schemas.entries) {
      final modelName = _getModelName(entry.key);
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
      entry.value.properties?.forEach((propName, propSchema) {
        final propType = _getDartType(propSchema);
        final camelCasePropName = _toCamelCase(propName);
        buffer.writeln('    @JsonKey(name: \'$propName\')');
        buffer.writeln('    $propType? $camelCasePropName,');
      });

      buffer.writeln('  }) = _$modelName;\n');

      // fromJsonファクトリ
      buffer.writeln(
          '  factory $modelName.fromJson(Map<String, dynamic> json) =>');
      buffer.writeln('      _\$${modelName}FromJson(json);');
      buffer.writeln('}');

      await modelFile.writeAsString(buffer.toString());
    }

    // index.dartを生成
    final indexFile = File('$outputPath/models/index.dart');
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

    // モデルのエクスポート
    for (final entry in schemas.entries) {
      final modelName = _getModelName(entry.key);
      indexBuffer.writeln("export '${modelName.toLowerCase()}.dart';");
    }

    await indexFile.writeAsString(indexBuffer.toString());
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

  String _toCamelCase(String input) {
    if (input.isEmpty) return input;

    // 入力文字列を単語に分割
    final words = input.split(RegExp(r'[_\-\s]'));

    // 単語を処理
    final result = words.asMap().entries.map((entry) {
      final word = entry.value;
      if (word.isEmpty) return '';

      // 最初の単語は小文字、それ以外は最初の文字を大文字に
      return entry.key == 0
          ? word.toLowerCase()
          : word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join('');

    return result;
  }
}
