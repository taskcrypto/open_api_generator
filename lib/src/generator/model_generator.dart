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
      final snakeCaseName = _toSnakeCase(modelName);
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
    final indexFile = File('$outputPath/models_index.dart');
    final indexBuffer = StringBuffer();
    indexBuffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND\n');

    // モデルのエクスポート
    for (final entry in schemas.entries) {
      final modelName = _getModelName(entry.key);
      final snakeCaseName = _toSnakeCase(modelName);
      indexBuffer.writeln("export 'models/$snakeCaseName.dart';");
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

    // 区切り文字を削除して単語を結合
    final cleanInput = input.replaceAll(RegExp(r'[_\-\s]'), '');

    // 最初の文字のみを小文字に変換
    return cleanInput[0].toLowerCase() + cleanInput.substring(1);
  }

  String _toSnakeCase(String input) {
    if (input.isEmpty) return input;

    // 大文字の前で分割し、アンダースコアを追加
    final result = input.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    );

    // 先頭のアンダースコアを削除
    return result.startsWith('_') ? result.substring(1) : result;
  }
}
