import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:yaml/yaml.dart';

import '../lib/src/generator/api_generator.dart';
import '../lib/src/models/openapi_spec.dart';
import '../lib/src/utils/name_utils.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption('input', abbr: 'i', help: 'Input OpenAPI YAML file')
    ..addOption('output', abbr: 'o', help: 'Output directory')
    ..addOption('base-url', help: 'Base URL for the API');

  final results = parser.parse(arguments);

  if (results['input'] == null ||
      results['output'] == null ||
      results['base-url'] == null) {
    print(
        'Usage: dart run bin/generate.dart --input <yaml_file> --output <output_dir> --base-url <base_url>');
    exit(1);
  }

  final inputFilePath = results['input'] as String;
  final outputDir = results['output'] as String;
  final baseUrl = results['base-url'] as String;

  try {
    print('========= OPENAPI GENERATOR START ========');
    print('Input file: $inputFilePath');
    print('Output directory: $outputDir');
    print('Base URL: $baseUrl');
    print('=======================================');

    final inputFile = File(inputFilePath);
    if (!await inputFile.exists()) {
      print('Error: Input file not found: $inputFilePath');
      exit(1);
    }

    print('Reading input file...');
    final content = await inputFile.readAsString();
    final Map<String, dynamic> spec;

    if (inputFile.path.endsWith('.yaml') || inputFile.path.endsWith('.yml')) {
      print('Parsing YAML content...');
      final yamlDoc = loadYaml(content);
      spec = json.decode(json.encode(yamlDoc));
    } else {
      print('Parsing JSON content...');
      spec = json.decode(content);
    }

    print('Creating OpenApiSpec...');
    final openApiSpec = OpenApiSpec.fromJson(spec);
    final apiName = NameUtils.generateApiNameFromUrl(inputFilePath);
    print('Generated API name: $apiName');

    // 出力ディレクトリとサブディレクトリを作成
    final apiOutputDir = '$outputDir/$apiName';
    final modelsDir = '$apiOutputDir/models';
    final retrofitDir = '$apiOutputDir/retrofit';

    print('Creating directories...');
    // 各ディレクトリを作成
    for (final dir in [apiOutputDir, modelsDir, retrofitDir]) {
      final directory = Directory(dir);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
        print('Created directory: $dir');
      } else {
        print('Directory already exists: $dir');
      }
    }

    print('Initializing ApiGenerator...');
    final generator =
        ApiGenerator(openApiSpec, apiOutputDir, basePath: baseUrl);

    print('Starting code generation...');
    await generator.generate(apiName: apiName);
    print('Code generation completed');

    print('========= OPENAPI GENERATOR END ========');
    print('Successfully generated API client and models at: $apiOutputDir');
    print(
        'Please run "dart run build_runner build --delete-conflicting-outputs" to generate freezed code.');
  } catch (e, stackTrace) {
    print('========= ERROR ========');
    print('Error generating API client: $e');
    print('Stack trace:');
    print(stackTrace);
    print('=======================');
    exit(1);
  }
}
