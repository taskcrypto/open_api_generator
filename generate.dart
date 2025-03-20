import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:openapi_generator_flutter/src/generator/api_generator.dart';
import 'package:openapi_generator_flutter/src/models/openapi_spec.dart';
import 'package:openapi_generator_flutter/src/utils/name_utils.dart';
import 'package:yaml/yaml.dart';

Future<void> cleanDirectory(String dirPath) async {
  final dir = Directory(dirPath);
  if (await dir.exists()) {
    // Delete only specific directories and files
    final contents = await dir.list().toList();
    for (var entity in contents) {
      final name = entity.path.split(Platform.pathSeparator).last;
      if (!name.startsWith('.') &&
          name != 'pubspec.yaml' &&
          name != 'pubspec.lock') {
        await entity.delete(recursive: true);
      }
    }
  } else {
    await dir.create(recursive: true);
  }
}

Future<void> mergeIndexFiles(String outputDir) async {
  final dir = Directory(outputDir);
  if (!await dir.exists()) return;

  // Find all model files and client files
  final modelFiles = <File>[];
  final clientFiles = <File>[];
  await for (final entity in dir.list(recursive: true)) {
    if (entity is File) {
      final path = entity.path;
      if (path.contains('/models/') &&
          path.endsWith('.dart') &&
          !path.endsWith('index.dart')) {
        modelFiles.add(entity);
      } else if (path.endsWith('_client.dart')) {
        clientFiles.add(entity);
      }
    }
  }

  // Create merged content
  final exports = <String>{};

  // Add model exports
  for (final file in modelFiles) {
    final relativePath =
        file.path.replaceFirst(dir.path, '').replaceFirst('/', '');
    exports.add('export \'./$relativePath\';');
  }

  // Add client exports
  for (final file in clientFiles) {
    final relativePath =
        file.path.replaceFirst(dir.path, '').replaceFirst('/', '');
    exports.add('export \'./$relativePath\';');
  }

  // Add main client export
  exports.add('export \'./client.dart\';');

  // Create new index.dart in root
  final newIndexFile = File('${dir.path}/index.dart');
  await newIndexFile.writeAsString(exports.join('\n'));
}

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption('input',
        abbr: 'i',
        help: 'Input OpenAPI specification file (JSON or YAML)',
        mandatory: true)
    ..addOption('output',
        abbr: 'o',
        help: 'Output directory for generated files',
        defaultsTo:
            Platform.environment['OPENAPI_OUTPUT_DIR'] ?? 'lib/generated')
    ..addOption('base-url',
        help: 'Base URL for API client',
        defaultsTo: Platform.environment['OPENAPI_BASE_URL'] ??
            'http://localhost:8080');

  try {
    final results = parser.parse(args);
    final inputFile = results['input'] as String;
    final outputDir =
        Platform.environment['OPENAPI_OUTPUT_DIR'] ?? results['output'];
    final baseUrl =
        Platform.environment['OPENAPI_BASE_URL'] ?? results['base-url'];

    final file = File(inputFile);
    if (!file.existsSync()) {
      throw Exception('Input file does not exist: $inputFile');
    }

    await cleanDirectory(outputDir);

    final content = await file.readAsString();
    final Map<String, dynamic> spec;

    if (file.path.endsWith('.yaml') || file.path.endsWith('.yml')) {
      final yamlDoc = loadYaml(content) as Map;
      spec = _convertYamlToJson(yamlDoc);
    } else {
      spec = json.decode(content);
    }

    final openApiSpec = OpenApiSpec.fromJson(spec);
    final generator = ApiGenerator(openApiSpec, outputDir, basePath: baseUrl);

    final apiName = NameUtils.generateApiNameFromUrl(inputFile);
    // 出力ディレクトリとサブディレクトリを作成
    final apiOutputDir = '$outputDir/$apiName';
    final modelsDir = '$apiOutputDir/models';
    final retrofitDir = '$apiOutputDir/retrofit';

    // 各ディレクトリを作成
    for (final dir in [apiOutputDir, modelsDir, retrofitDir]) {
      final directory = Directory(dir);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
        print('Created directory: $dir');
      }
    }
    await generator.generate(apiName: apiName);

    // Merge index.dart files
    await mergeIndexFiles(outputDir);

    // Delete unwanted files and directories
    final outputPath = Directory(outputDir);
    if (await outputPath.exists()) {
      final dartToolDir = Directory('${outputPath.path}/.dart_tool');
      if (await dartToolDir.exists()) {
        await dartToolDir.delete(recursive: true);
      }

      final pubspecYaml = File('${outputPath.path}/pubspec.yaml');
      if (await pubspecYaml.exists()) {
        await pubspecYaml.delete();
      }

      final pubspecLock = File('${outputPath.path}/pubspec.lock');
      if (await pubspecLock.exists()) {
        await pubspecLock.delete();
      }
    }

    print('Successfully generated API client and models at: $outputDir');
  } catch (e, stackTrace) {
    print('Error: $e');
    print('Stack trace: $stackTrace');
    print(
        'Usage: dart run bin/generate.dart --input <spec-file> [--output <dir>] [--base-url <url>]');
    exit(1);
  }
}

Map<String, dynamic> _convertYamlToJson(Map yamlMap) {
  final result = <String, dynamic>{};

  for (final entry in yamlMap.entries) {
    final key = entry.key.toString();
    final value = entry.value;

    if (value is YamlMap) {
      result[key] = _convertYamlToJson(value);
    } else if (value is YamlList) {
      result[key] = value.map((item) {
        if (item is YamlMap) {
          return _convertYamlToJson(item);
        }
        return item;
      }).toList();
    } else {
      result[key] = value;
    }
  }

  return result;
}
