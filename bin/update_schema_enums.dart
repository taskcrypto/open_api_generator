import 'dart:io';

import 'package:args/args.dart';
import 'package:openapi_generator_flutter/src/utils/schema_enum_updater.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'input',
      abbr: 'i',
      help: 'Input YAML file path',
      mandatory: true,
    );

  try {
    final results = parser.parse(arguments);
    final inputPath = results['input'] as String;

    print('Updating schema enums in $inputPath...');
    final updater = SchemaEnumUpdater();
    await updater.updateSchemaEnums(inputPath);
    print('Schema enums updated successfully!');
    print('Backup file created at $inputPath.bak');
  } on ArgParserException catch (e) {
    print('Error: ${e.message}');
    print(
        'Usage: dart run bin/update_schema_enums.dart --input <yaml_file_path>');
    exit(1);
  } catch (e) {
    print('Error: $e');
    exit(1);
  }
}
