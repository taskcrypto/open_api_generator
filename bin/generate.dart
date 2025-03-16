import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:yaml/yaml.dart';

import '../lib/src/generator/api_generator.dart';
import '../lib/src/models/openapi_spec.dart';

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

  final inputFile = results['input'] as String;
  final outputDir = results['output'] as String;
  final baseUrl = results['base-url'] as String;

  try {
    final content = await File(inputFile).readAsString();
    final Map<String, dynamic> spec;

    if (inputFile.path.endsWith('.yaml') || inputFile.path.endsWith('.yml')) {
      final yamlDoc = loadYaml(content);
      spec = json.decode(json.encode(yamlDoc));
    } else {
      spec = json.decode(content);
    }

    final openApiSpec = OpenApiSpec.fromJson(spec);
    final generator = ApiGenerator(openApiSpec, outputDir, basePath: baseUrl);
    stderr.writeln('About to start generation...');
    await generator.generate();
    stderr.writeln('Generation completed');

    print('Successfully generated API client and models at: $outputDir');
    print(
        'Please run "dart run build_runner build --delete-conflicting-outputs" to generate freezed code.');
  } catch (e, stackTrace) {
    stderr.writeln('Error generating API client: $e');
    stderr.writeln('Stack trace: $stackTrace');
    exit(1);
  }
}
