import 'dart:io';

import '../models/openapi_spec.dart';

class ModelGenerator {
  final OpenApiSpec spec;
  final String outputPath;

  ModelGenerator(this.spec, this.outputPath);

  Future<void> generate() async {
    final modelsDir = Directory('$outputPath/models');
    if (!await modelsDir.exists()) {
      await modelsDir.create(recursive: true);
    }

    if (spec.components?.schemas == null) {
      return;
    }

    for (final schema in spec.components!.schemas!.entries) {
      if (schema.value.properties == null) {
        continue;
      }

      final buffer = StringBuffer();
      buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
      buffer.writeln();
      buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
      buffer.writeln();
      buffer.writeln('part \'${schema.key.toLowerCase()}.g.dart\';');
      buffer.writeln();
      buffer.writeln('@JsonSerializable()');
      buffer.writeln('class ${schema.key} {');
      buffer.writeln('  ${schema.key}({');
      for (final property in schema.value.properties!.entries) {
        buffer.writeln('    this.${property.key},');
      }
      buffer.writeln('  });');
      buffer.writeln();
      buffer.writeln(
          '  factory ${schema.key}.fromJson(Map<String, dynamic> json) =>');
      buffer.writeln('      _\$${schema.key}FromJson(json);');
      buffer.writeln();
      buffer.writeln(
          '  Map<String, dynamic> toJson() => _\$${schema.key}ToJson(this);');
      buffer.writeln();
      for (final property in schema.value.properties!.entries) {
        buffer.writeln('  @JsonKey(name: \'${property.key}\')');
        buffer.writeln(
            '  final ${_convertType(property.value.type)}? ${property.key};');
      }
      buffer.writeln('}');

      final file = File('${modelsDir.path}/${schema.key.toLowerCase()}.dart');
      await file.writeAsString(buffer.toString());
    }

    final buffer = StringBuffer();
    buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
    buffer.writeln();
    for (final schema in spec.components!.schemas!.entries) {
      buffer.writeln("export '${schema.key.toLowerCase()}.dart';");
    }

    final file = File('${modelsDir.path}/index.dart');
    await file.writeAsString(buffer.toString());
  }

  String _convertType(String? type) {
    switch (type) {
      case 'string':
        return 'String';
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'array':
        return 'List<dynamic>';
      case 'object':
        return 'Map<String, dynamic>';
      default:
        return 'dynamic';
    }
  }
}
