import 'dart:io';

import 'package:code_builder/code_builder.dart' as code_builder;
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;

import '../models/openapi_spec.dart';
import 'method_generator.dart';
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
    // クライアントクラスを生成
    await _generateClients();

    // モデルクラスを生成
    await _generateModels();

    // インデックスファイルを生成
    _generateIndexFile();

    // クライアントのインデックスファイルを生成
    _generateClientIndexFile();
  }

  /// APIクライアントクラスを生成
  /// 各エンドポイントのカテゴリごとにクライアントクラスを生成し、それらをまとめるメインクライアントクラスも生成
  Future<void> _generateClients() async {
    final methodsByCategory = _categorizeApiMethods();

    // カテゴリごとにクライアントクラスを生成
    for (final entry in methodsByCategory.entries) {
      final category = entry.key;
      final methods = entry.value;

      final library = code_builder.Library((b) => b
        ..directives.addAll([
          code_builder.Directive.import('package:http/http.dart', as: 'http'),
          code_builder.Directive.import('dart:convert'),
          code_builder.Directive.import('../index.dart'),
        ])
        ..body.add(_generateCategoryApiClientClass(category, methods)));

      final emitter = code_builder.DartEmitter();
      final formattedCode =
          DartFormatter().format('${library.accept(emitter)}');

      final clientDir = Directory(path.join(outputPath, 'client'));
      await clientDir.create(recursive: true);
      await File(path.join(
              clientDir.path, '${category.toLowerCase()}_client.dart'))
          .writeAsString(formattedCode);
    }

    // メインのクライアントクラスを生成
    final mainLibrary = code_builder.Library((b) => b
      ..directives.addAll(methodsByCategory.keys.map((category) =>
          code_builder.Directive.import(
              './client/${category.toLowerCase()}_client.dart')))
      ..body.add(_generateMainApiClientClass(methodsByCategory.keys.toList())));

    final emitter = code_builder.DartEmitter();
    final formattedCode =
        DartFormatter().format('${mainLibrary.accept(emitter)}');

    await File(path.join(outputPath, 'client.dart'))
        .writeAsString(formattedCode);
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

    // タグごとにフォルダを作成してモデルを生成
    final rootIndexBuffer = StringBuffer();
    rootIndexBuffer.writeln('// Generated code - do not modify by hand');
    rootIndexBuffer.writeln();

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

        // ルートのindex.dartにエクスポートを追加
        rootIndexBuffer.writeln('export \'models/$tag/$fileName.dart\';');
      }
    }

    await File(path.join(outputPath, 'index.dart'))
        .writeAsString(rootIndexBuffer.toString());
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
  /// リクエストボディまたはレスポンスでスキーマが参照されているか確認
  bool _operationUsesSchema(Operation operation, String schemaName) {
    // リクエストボディでスキーマが使用されているかチェック
    if (operation.requestBody?.content['application/json']?.schema.ref !=
        null) {
      final ref =
          operation.requestBody!.content['application/json']!.schema.ref!;
      if (TypeUtils.getRefName(ref) == schemaName) {
        return true;
      }
    }

    // レスポンスでスキーマが使用されているかチェック
    for (final response in operation.responses.values) {
      if (response.content?['application/json']?.schema.ref != null) {
        final ref = response.content!['application/json']!.schema.ref!;
        if (TypeUtils.getRefName(ref) == schemaName) {
          return true;
        }
      }
    }

    return false;
  }

  /// スキーマ名からカテゴリを抽出
  /// 例：TokenSuccess -> Token, OrderSuccess -> Order
  String _extractCategory(String name) {
    // 一般的なカテゴリを抽出（例：TokenSuccess -> Token, OrderSuccess -> Order）
    final matches = RegExp(r'^([A-Z][a-z]+)').firstMatch(name);
    if (matches != null) {
      return matches.group(1)!;
    }
    return 'Common';
  }

  /// APIメソッドをカテゴリごとに分類
  /// パスからカテゴリを抽出し、GETとPOSTメソッドを適切なカテゴリに振り分け
  Map<String, List<code_builder.Method>> _categorizeApiMethods() {
    final methodsByCategory = <String, List<code_builder.Method>>{};
    final operationIds = <String>{};

    spec.paths.forEach((path, pathItem) {
      // GETメソッドの処理
      if (pathItem.get != null) {
        final operation = pathItem.get!;
        if (!operationIds.contains(operation.operationId)) {
          operationIds.add(operation.operationId);
          final category = _extractCategoryFromPath(path);
          methodsByCategory.putIfAbsent(category, () => []);
          final method = MethodGenerator.generateGetMethod(path, operation);
          methodsByCategory[category]!.add(method);
        }
      }

      // POSTメソッドの処理
      if (pathItem.post != null) {
        final operation = pathItem.post!;
        if (!operationIds.contains(operation.operationId)) {
          operationIds.add(operation.operationId);
          final category = _extractCategoryFromPath(path);
          methodsByCategory.putIfAbsent(category, () => []);
          final method = MethodGenerator.generatePostMethod(path, operation);
          methodsByCategory[category]!.add(method);
        }
      }

      // PUTメソッドの処理
      if (pathItem.put != null) {
        final operation = pathItem.put!;
        if (!operationIds.contains(operation.operationId)) {
          operationIds.add(operation.operationId);
          final category = _extractCategoryFromPath(path);
          methodsByCategory.putIfAbsent(category, () => []);
          final method = MethodGenerator.generatePutMethod(path, operation);
          methodsByCategory[category]!.add(method);
        }
      }

      // DELETEメソッドの処理
      if (pathItem.delete != null) {
        final operation = pathItem.delete!;
        if (!operationIds.contains(operation.operationId)) {
          operationIds.add(operation.operationId);
          final category = _extractCategoryFromPath(path);
          methodsByCategory.putIfAbsent(category, () => []);
          final method = MethodGenerator.generateDeleteMethod(path, operation);
          methodsByCategory[category]!.add(method);
        }
      }
    });

    return methodsByCategory;
  }

  /// パスからカテゴリを抽出
  /// 例：/token/auth -> Token, /order/list -> Order
  String _extractCategoryFromPath(String path) {
    final segments = path.split('/');
    if (segments.length > 1) {
      final category = segments[1].replaceAll('-', '');
      return category.substring(0, 1).toUpperCase() + category.substring(1);
    }
    return 'Common';
  }

  /// カテゴリごとのクライアントクラスを生成
  /// 各カテゴリのAPIメソッドをまとめたクラスを生成
  code_builder.Class _generateCategoryApiClientClass(
      String category, List<code_builder.Method> methods) {
    return code_builder.Class((b) => b
      ..name = '${category}Client'
      ..fields.add(code_builder.Field((f) => f
        ..name = 'baseUrl'
        ..type = code_builder.refer('String')
        ..modifier = code_builder.FieldModifier.final$))
      ..constructors.add(code_builder.Constructor((c) => c
        ..requiredParameters.add(code_builder.Parameter((p) => p
          ..name = 'baseUrl'
          ..toThis = true))))
      ..methods.addAll(methods));
  }

  /// メインのAPIクライアントクラスを生成
  /// 各カテゴリのクライアントクラスをまとめた統合クラスを生成
  code_builder.Class _generateMainApiClientClass(List<String> categories) {
    final fields = [
      code_builder.Field((f) => f
        ..name = 'baseUrl'
        ..type = code_builder.refer('String')
        ..modifier = code_builder.FieldModifier.final$),
      ...categories.map((category) => code_builder.Field((f) => f
        ..name = category.toLowerCase()
        ..type = code_builder.refer('${category}Client')
        ..modifier = code_builder.FieldModifier.final$))
    ];

    final initializers = categories.map((category) => code_builder.Code(
        '${category.toLowerCase()} = ${category}Client(baseUrl)'));

    return code_builder.Class((b) => b
      ..name = 'ApiClient'
      ..fields.addAll(fields)
      ..constructors.add(code_builder.Constructor((c) => c
        ..requiredParameters.add(code_builder.Parameter((p) => p
          ..name = 'baseUrl'
          ..toThis = true))
        ..initializers.addAll(initializers))));
  }

  /// インデックスファイルを生成
  void _generateIndexFile() {
    final exports = StringBuffer();
    exports.writeln('// Generated code - do not modify by hand');
    exports.writeln();

    // モデルのインデックスファイルをエクスポート
    if (spec.components?.schemas != null) {
      final schemasByTag = <String, Map<String, Schema>>{};

      for (final entry in spec.components!.schemas!.entries) {
        final name = entry.key;
        final schema = entry.value;
        final tag = _findTagForSchema(name);

        schemasByTag.putIfAbsent(tag, () => {});
        schemasByTag[tag]![name] = schema;
      }

      for (final tagEntry in schemasByTag.entries) {
        final tag = tagEntry.key.toLowerCase();
        final schemas = tagEntry.value;

        for (final entry in schemas.entries) {
          final name = entry.key;
          final normalizedName = NameUtils.normalizeClassName(name);
          final fileName = NameUtils.normalizeFileName(normalizedName);
          exports.writeln("export './models/$tag/$fileName.dart';");
        }
      }
    }

    // クライアントをエクスポート
    final methodsByCategory = _categorizeApiMethods();
    for (final category in methodsByCategory.keys) {
      exports
          .writeln("export './client/${category.toLowerCase()}_client.dart';");
    }
    exports.writeln("export './client.dart';");

    File(path.join(outputPath, 'index.dart'))
        .writeAsStringSync(exports.toString());
  }

  /// クライアントのインデックスファイルを生成
  void _generateClientIndexFile() {
    final exports = StringBuffer();
    final methodsByCategory = _categorizeApiMethods();

    for (final category in methodsByCategory.keys) {
      exports
          .writeln("export './client/${category.toLowerCase()}_client.dart';");
    }

    File(path.join(outputPath, 'client.dart'))
        .writeAsStringSync(exports.toString());
  }
}
