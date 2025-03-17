import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;

import '../models/openapi_spec.dart';
import 'client_generator.dart';
import 'model_generator.dart';
import 'retrofit_generator.dart';
import 'utils/name_utils.dart';
import 'utils/type_utils.dart';

class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException(this.statusCode, this.message);

  @override
  String toString() => 'ApiException: [$statusCode] $message';
}

class ApiGenerator {
  final OpenApiSpec spec;
  final String outputPath;
  final String basePath;

  ApiGenerator(this.spec, this.outputPath, {this.basePath = ''});

  /// OpenAPI仕様からAPIクライアントとモデルを生成
  Future<void> generate() async {
    final modelGenerator = ModelGenerator(spec, outputPath);
    final retrofitGenerator =
        RetrofitGenerator(spec, outputPath, basePath: basePath);
    final clientGenerator =
        ClientGenerator(spec, outputPath, basePath: basePath);

    await modelGenerator.generate();
    await retrofitGenerator.generate();
    await clientGenerator.generate();
  }

  /// モデルクラスを生成
  /// OpenAPI仕様のcomponentsからスキーマを読み取り、対応するDartクラスを生成
  Future<void> _generateModels() async {
    if (spec.components?.schemas == null) return;

    final modelsDir = Directory(path.join(outputPath, 'models'));
    await modelsDir.create(recursive: true);

    // スキーマをタグごとに分類
    final schemasByTag = <String, Map<String, Schema>>{};

    for (final entry in spec.components!.schemas!.entries) {
      final name = entry.key;
      final schema = entry.value;
      final tag = _findTagForSchema(name);

      schemasByTag.putIfAbsent(tag, () => {});
      schemasByTag[tag]![name] = schema;
    }

    // model_index.dartを生成
    final modelIndexBuffer = StringBuffer();
    modelIndexBuffer.writeln('// Generated code - do not modify by hand');
    modelIndexBuffer.writeln();

    for (final tagEntry in schemasByTag.entries) {
      final tag = tagEntry.key.toLowerCase();
      final schemas = tagEntry.value;

      final tagDir = Directory(path.join(modelsDir.path, tag));
      await tagDir.create(recursive: true);

      for (final entry in schemas.entries) {
        final name = entry.key;
        final schema = entry.value;
        final fileName = NameUtils.normalizeFileName(name);

        // モデルファイルを生成
        await _generateModelFile(name, schema, tagDir);

        // model_index.dartにエクスポートを追加
        modelIndexBuffer.writeln('export \'models/$tag/$fileName.dart\';');
      }
    }

    // model_index.dartを生成
    await File(path.join(outputPath, 'model_index.dart'))
        .writeAsString(modelIndexBuffer.toString());
  }

  /// 単一のモデルクラスファイルを生成
  /// freezedを使用して、イミュータブルなデータクラスを生成
  Future<void> _generateModelFile(
      String name, Schema schema, Directory modelDir) async {
    final normalizedName = NameUtils.normalizeClassName(name);
    final fileName = NameUtils.normalizeFileName(normalizedName);

    final properties = schema.properties;
    final requiredProperties = schema.required ?? [];

    // 他のモデルへの参照があるかチェック
    bool hasModelReferences = false;
    if (properties != null) {
      for (final entry in properties.entries) {
        final propertySchema = entry.value;
        if (propertySchema.ref != null ||
            (propertySchema.type == 'array' &&
                propertySchema.items?.ref != null)) {
          hasModelReferences = true;
          break;
        }
      }
    }

    // モデルディレクトリからの相対パスを計算
    final relativePath = path.relative(
        path.dirname(path.join(outputPath, 'index.dart')),
        from: modelDir.path);

    final buffer = StringBuffer();
    buffer.writeln('// ignore_for_file: invalid_annotation_target');
    buffer.writeln();
    buffer.writeln(
        'import \'package:freezed_annotation/freezed_annotation.dart\';');
    if (hasModelReferences) {
      buffer.writeln('import \'${path.join(relativePath, 'index.dart')}\';');
    }
    buffer.writeln();
    buffer.writeln('part \'$fileName.freezed.dart\';');
    buffer.writeln('part \'$fileName.g.dart\';');
    buffer.writeln();
    buffer.writeln('@freezed');
    buffer.writeln('class $normalizedName with _\$$normalizedName {');
    buffer.writeln('  const factory $normalizedName({');

    if (properties != null) {
      for (final entry in properties.entries) {
        final originalName = entry.key;
        final propertyName = NameUtils.normalizeVariableName(originalName);
        final propertyType = TypeUtils.getTypeFromSchema(entry.value);
        final isRequired = requiredProperties.contains(originalName);
        final isNullable = entry.value.nullable ?? !isRequired;

        buffer.write('    ');
        if (originalName != propertyName) {
          buffer.write('@JsonKey(name: \'$originalName\') ');
        }
        if (isRequired) {
          buffer.write('required ');
        }
        buffer.write('${isNullable ? '$propertyType?' : propertyType} ');
        buffer.write(propertyName);
        buffer.writeln(',');
      }
    }

    buffer.writeln('  }) = _$normalizedName;');
    buffer.writeln();
    buffer.writeln(
        '  factory $normalizedName.fromJson(Map<String, dynamic> json) => _\$${normalizedName}FromJson(json);');
    buffer.writeln('}');

    final formattedCode = DartFormatter().format(buffer.toString());

    await File(path.join(modelDir.path, '$fileName.dart'))
        .writeAsString(formattedCode);
  }

  /// スキーマに対応するタグを検索
  /// パスの操作からタグを見つけるか、見つからない場合はスキーマ名から推測
  String _findTagForSchema(String schemaName) {
    // スキーマ名に関連するパスを探す
    for (final pathEntry in spec.paths.entries) {
      final path = pathEntry.key;
      final pathItem = pathEntry.value;

      // GETメソッドのレスポンスをチェック
      if (pathItem.get != null) {
        final operation = pathItem.get!;
        if (_operationUsesSchema(operation, schemaName)) {
          if (operation.tags != null && operation.tags!.isNotEmpty) {
            return operation.tags![0];
          }
        }
      }

      // POSTメソッドのリクエスト/レスポンスをチェック
      if (pathItem.post != null) {
        final operation = pathItem.post!;
        if (_operationUsesSchema(operation, schemaName)) {
          if (operation.tags != null && operation.tags!.isNotEmpty) {
            return operation.tags![0];
          }
        }
      }
    }

    // タグが見つからない場合は、スキーマ名から推測
    return _extractCategory(schemaName);
  }

  /// 操作（GET/POST）がスキーマを使用しているかチェック
  bool _operationUsesSchema(Operation operation, String schemaName) {
    // レスポンスをチェック
    for (final response in operation.responses.values) {
      if (response.content != null) {
        for (final content in response.content!.values) {
          if (content.schema.ref == '#/components/schemas/$schemaName') {
            return true;
          }
        }
      }
    }

    // リクエストボディをチェック
    if (operation.requestBody != null) {
      final requestBody = operation.requestBody!;
      for (final content in requestBody.content.values) {
        if (content.schema.ref == '#/components/schemas/$schemaName') {
          return true;
        }
      }
    }

    return false;
  }

  /// スキーマ名からカテゴリを抽出
  String _extractCategory(String schemaName) {
    // スキーマ名からカテゴリを推測
    final parts = schemaName.split(RegExp(r'(?=[A-Z])'));
    if (parts.length > 1) {
      return parts[0].toLowerCase();
    }
    return 'common';
  }

  /// インデックスファイルを生成
  void _generateIndexFile() {
    final buffer = StringBuffer();
    buffer.writeln('// Generated code - do not modify by hand');
    buffer.writeln();
    buffer.writeln('export \'client_index.dart\';');
    buffer.writeln('export \'model_index.dart\';');

    final formattedCode = DartFormatter().format(buffer.toString());
    File(path.join(outputPath, 'index.dart')).writeAsStringSync(formattedCode);
  }
}
