import 'dart:io';

import 'package:code_builder/code_builder.dart' as code_builder;
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';

import '../models/openapi_spec.dart';
import '../utils/name_utils.dart';
import '../utils/type_utils.dart';
import 'enum_generator.dart';

class ApiGenerator {
  final OpenApiSpec spec;
  final String outputPath;
  final String baseUrl;

  ApiGenerator(this.spec, this.outputPath, this.baseUrl);

  Future<void> generate() async {
    try {
      final logFile = File('debug.log');
      await logFile.writeAsString('Starting generate method\n');

      if (spec.components?.schemas == null) {
        await logFile.writeAsString('No schemas found in spec.components\n');
        return;
      }

      final processedRefs = <String>{};
      final modelsDir = Directory(p.join(outputPath, 'models'));
      await modelsDir.create(recursive: true);

      await logFile.writeAsString(
          'Found ${spec.components!.schemas!.length} schemas to process\n');
      for (final entry in spec.components!.schemas!.entries) {
        final modelName = entry.key;
        final schema = entry.value;
        await logFile.writeAsString(
            'Processing schema: $modelName, type: ${schema.type}, ref: ${schema.ref}\n');
        await _processSchema(modelName, schema, processedRefs);
      }
    } catch (e, stackTrace) {
      final logFile = File('error.log');
      await logFile.writeAsString('Error: $e\nStack trace: $stackTrace\n');
      rethrow;
    }
  }

  Future<void> _processSchema(
      String name, Schema schema, Set<String> processedRefs) async {
    final logFile = File('debug.log');
    await logFile.writeAsString('Processing schema: $name\n',
        mode: FileMode.append);

    final normalizedName = NameUtils.normalizeClassName(name);
    if (processedRefs.contains(normalizedName)) {
      await logFile.writeAsString('Already processed: $normalizedName\n',
          mode: FileMode.append);
      return;
    }
    processedRefs.add(normalizedName);

    if (schema.ref != null) {
      await logFile.writeAsString('Found ref: ${schema.ref}\n',
          mode: FileMode.append);
      final refName = TypeUtils.getRefName(schema.ref!);
      final refSchema = _getSchemaFromRef(schema.ref!);
      await _processSchema(refName, refSchema, processedRefs);
      return;
    }

    // プロパティ内の参照型を先に処理
    if (schema.properties != null) {
      for (final entry in schema.properties!.entries) {
        final propSchema = entry.value;
        if (propSchema.ref != null) {
          final refName = TypeUtils.getRefName(propSchema.ref!);
          final refSchema = _getSchemaFromRef(propSchema.ref!);
          await _processSchema(refName, refSchema, processedRefs);
        } else if (propSchema.items?.ref != null) {
          final refName = TypeUtils.getRefName(propSchema.items!.ref!);
          final refSchema = _getSchemaFromRef(propSchema.items!.ref!);
          await _processSchema(refName, refSchema, processedRefs);
        }
      }
    }

    // 配列のアイテムが参照型の場合を処理
    if (schema.type == 'array' && schema.items?.ref != null) {
      final refName = TypeUtils.getRefName(schema.items!.ref!);
      final refSchema = _getSchemaFromRef(schema.items!.ref!);
      await _processSchema(refName, refSchema, processedRefs);
      return;
    }

    final modelDir = p.join(outputPath, 'models');
    if (schema.type == 'string' && schema.enum_ != null) {
      // 列挙型の生成
      final enumClass = EnumGenerator.generateEnumClass(normalizedName, schema);
      final fileName = p.join(
          modelDir, '${NameUtils.normalizeFileName(normalizedName)}.dart');
      final library = code_builder.Library((b) => b
        ..directives.addAll([
          code_builder.Directive.import('dart:convert'),
          code_builder.Directive.import(
              'package:freezed_annotation/freezed_annotation.dart'),
          code_builder.Directive.part(
              '${p.basenameWithoutExtension(fileName)}.freezed.dart'),
          code_builder.Directive.part(
              '${p.basenameWithoutExtension(fileName)}.g.dart'),
        ])
        ..body.add(enumClass));

      final emitter = code_builder.DartEmitter();
      final formattedCode = DartFormatter().format('''
// ignore_for_file: invalid_annotation_target

${library.accept(emitter)}
''');

      await _generateFile(fileName, formattedCode);
    } else {
      // クラスの生成
      print('Generating model file for: $normalizedName');
      await _generateModelFile(normalizedName, schema, modelDir);
    }
  }

  Schema _getSchemaFromRef(String ref) {
    final refName = TypeUtils.getRefName(ref);
    if (spec.components?.schemas?[refName] == null) {
      throw Exception('Referenced schema not found: $ref');
    }
    return spec.components!.schemas![refName]!;
  }

  String _extractCategoryFromPath(String path) {
    final pathParts = path.split('/').where((p) => p.isNotEmpty).toList();
    if (pathParts.isEmpty) return 'Common';
    return ReCase(pathParts.first).pascalCase;
  }

  Future<void> _generateClient(
      Map yaml, String outputDir, String baseUrl) async {
    final clientDir = Directory(p.join(outputDir, 'client'));
    if (!clientDir.existsSync()) {
      clientDir.createSync(recursive: true);
    }

    // メインクライアントファイルの生成
    await _generateMainClient(yaml, outputDir, baseUrl);

    // エンドポイント別クライアントファイルの生成
    final paths = yaml['paths'] as Map?;
    if (paths != null) {
      for (final entry in paths.entries) {
        final path = entry.key;
        final operations = entry.value as Map;

        await _generateEndpointClient(path, operations, clientDir.path);
      }
    }
  }

  Future<void> _generateMainClient(
      Map yaml, String outputDir, String baseUrl) async {
    final file = File(p.join(outputDir, 'client.dart'));
    final buffer = StringBuffer();

    buffer.writeln('import \'package:http/http.dart\' as http;');
    buffer.writeln('import \'dart:convert\';');
    buffer.writeln('\nclass ApiClient {');
    buffer.writeln('  final String baseUrl;');
    buffer.writeln('  final http.Client _client;');
    buffer.writeln(
        '\n  ApiClient({this.baseUrl = \'$baseUrl\'}) : _client = http.Client();');
    buffer.writeln('\n  void dispose() {');
    buffer.writeln('    _client.close();');
    buffer.writeln('  }');
    buffer.writeln('}');

    await file.writeAsString(buffer.toString());
  }

  Future<void> _generateEndpointClient(
      String path, Map operations, String outputDir) async {
    final pathParts = path.split('/').where((p) => p.isNotEmpty).toList();
    final fileName = '${pathParts.join('_')}_client.dart';
    final filePath = p.join(outputDir, fileName);
    final file = File(filePath);
    final buffer = StringBuffer();

    buffer.writeln('import \'package:http/http.dart\' as http;');
    buffer.writeln('import \'dart:convert\';');
    buffer.writeln('\nclass ${_getEndpointClassName(path)}Client {');
    buffer.writeln('  final String baseUrl;');
    buffer.writeln('  final http.Client _client;');
    buffer.writeln(
        '\n  ${_getEndpointClassName(path)}Client(this.baseUrl, this._client);');

    for (final entry in operations.entries) {
      final method = entry.key;
      final operation = entry.value as Map;

      await _generateEndpointMethod(method, path, operation, buffer);
    }

    buffer.writeln('}');

    await file.writeAsString(buffer.toString());
  }

  Future<void> _generateEndpointMethod(
      String method, String path, Map operation, StringBuffer buffer) async {
    final operationId = operation['operationId'] as String?;
    if (operationId == null) return;

    final parameters = operation['parameters'] as List?;
    final requestBody = operation['requestBody'] as Map?;
    final responses = operation['responses'] as Map?;

    buffer.writeln('\n  Future<dynamic> $operationId(');

    // パラメータの生成
    if (parameters != null) {
      for (final param in parameters) {
        final paramMap = param as Map;
        final name = paramMap['name'] as String;
        final schema = paramMap['schema'] as Map;
        final type = _getPropertyType(schema);
        final required = paramMap['required'] as bool? ?? false;

        if (required) {
          buffer.writeln('    required $type $name,');
        } else {
          buffer.writeln('    $type? $name,');
        }
      }
    }

    // リクエストボディの生成
    if (requestBody != null) {
      final content = requestBody['content'] as Map;
      final firstContent = content.values.first as Map;
      final schema = firstContent['schema'] as Map;
      final type = _getPropertyType(schema);
      final required = requestBody['required'] as bool? ?? false;

      if (required) {
        buffer.writeln('    required $type body,');
      } else {
        buffer.writeln('    $type? body,');
      }
    }

    buffer.writeln('  ) async {');
    buffer.writeln('    final response = await _client.${method}(');
    buffer.writeln('      Uri.parse(\'\$baseUrl$path\'),');

    if (requestBody != null) {
      buffer.writeln('      body: jsonEncode(body?.toJson()),');
      buffer
          .writeln('      headers: {\'Content-Type\': \'application/json\'},');
    }

    buffer.writeln('    );');
    buffer.writeln('\n    if (response.statusCode == 200) {');
    buffer.writeln('      return jsonDecode(response.body);');
    buffer.writeln('    } else {');
    buffer
        .writeln('      throw Exception(\'Failed to execute $operationId\');');
    buffer.writeln('    }');
    buffer.writeln('  }');
  }

  String _getEndpointClassName(String path) {
    final pathParts = path.split('/').where((p) => p.isNotEmpty).toList();
    return ReCase(pathParts.join('_')).pascalCase;
  }

  Future<void> _generateIndex(String outputDir) async {
    final file = File(p.join(outputDir, 'index.dart'));
    final buffer = StringBuffer();

    // モデルのエクスポート
    final modelsDir = Directory(p.join(outputDir, 'models'));
    if (modelsDir.existsSync()) {
      for (final entity in modelsDir.listSync()) {
        if (entity is File && entity.path.endsWith('.dart')) {
          final fileName = p.basename(entity.path);
          buffer.writeln('export \'models/$fileName\';');
        }
      }
    }

    // クライアントのエクスポート
    final clientDir = Directory(p.join(outputDir, 'client'));
    if (clientDir.existsSync()) {
      for (final entity in clientDir.listSync()) {
        if (entity is File && entity.path.endsWith('.dart')) {
          final fileName = p.basename(entity.path);
          buffer.writeln('export \'client/$fileName\';');
        }
      }
    }

    // メインクライアントのエクスポート
    buffer.writeln('export \'client.dart\';');

    await file.writeAsString(buffer.toString());
  }

  String _getPropertyType(Map schema) {
    final type = schema['type'] as String?;
    final format = schema['format'] as String?;
    final ref = schema['\$ref'] as String?;

    if (ref != null) {
      final parts = ref.split('/');
      return parts.last;
    }

    switch (type) {
      case 'integer':
        return format == 'int64' ? 'int' : 'int';
      case 'number':
        return format == 'float' ? 'double' : 'double';
      case 'string':
        return 'String';
      case 'boolean':
        return 'bool';
      case 'array':
        final items = schema['items'] as Map;
        final itemType = _getPropertyType(items);
        return 'List<$itemType>';
      default:
        return 'dynamic';
    }
  }

  Future<void> _generateFile(String fileName, String content) async {
    final file = File(fileName);
    await file.writeAsString('''
// ignore_for_file: invalid_annotation_target

$content
''');
  }

  Future<void> _generateModelFile(
      String name, Schema schema, String outputDir) async {
    print('Inside _generateModelFile for: $name');
    final properties = schema.properties;
    final requiredProperties = schema.required ?? [];
    final fileName =
        p.join(outputDir, '${NameUtils.normalizeFileName(name)}.dart');

    final buffer = StringBuffer();
    buffer.writeln('import \'dart:convert\';');
    buffer.writeln(
        'import \'package:freezed_annotation/freezed_annotation.dart\';');
    buffer.writeln();
    buffer.writeln(
        'part \'${p.basenameWithoutExtension(fileName)}.freezed.dart\';');
    buffer.writeln('part \'${p.basenameWithoutExtension(fileName)}.g.dart\';');
    buffer.writeln();
    buffer.writeln('@freezed');
    buffer.writeln('class $name with _\$$name {');
    buffer.writeln('  const factory $name({');

    if (properties != null) {
      for (final entry in properties.entries) {
        final propertyName = entry.key;
        final propertyType =
            TypeUtils.getDartTypeFromSchema(entry.value, spec: spec);
        final isRequired = requiredProperties.contains(propertyName);
        buffer.writeln('    required $propertyType $propertyName,');
      }
    }

    buffer.writeln('  }) = _$name;');
    buffer.writeln();
    buffer.writeln('  factory $name.fromJson(Map<String, dynamic> json) =>');
    buffer.writeln('      _\$${name}FromJson(json);');
    buffer.writeln('}');

    await _generateFile(fileName, buffer.toString());
  }
}
