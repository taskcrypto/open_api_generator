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

    final schemas = Map<String, OpenApiSchema>.from(
        spec.components?.schemas?.map((key, value) => MapEntry(
                key, // プレフィックスを削除
                OpenApiSchema(
                  type: value.type,
                  properties: value.properties?.map((k, v) =>
                      MapEntry(k, OpenApiSchema.fromJson(v.toJson()))),
                  items: value.items != null
                      ? OpenApiSchema.fromJson(value.items!.toJson())
                      : null,
                ))) ??
            {});

    // モデルをカテゴリごとに分類
    final modelsByCategory = <String, Map<String, OpenApiSchema>>{};
    for (final entry in schemas.entries) {
      final modelName = entry.key;
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
              '    ${isRequired ? '' : 'required '}$propType $camelCasePropName,');
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

    await indexFile.writeAsString(indexBuffer.toString());
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
}
