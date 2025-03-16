import 'package:code_builder/code_builder.dart';

import '../models/openapi_spec.dart';

class EnumGenerator {
  static Class generateEnumClass(String name, Schema schema) {
    final enumValues = schema.enum_ as List<dynamic>;

    return Class((b) => b
      ..name = name
      ..annotations.add(refer('JsonEnum'))
      ..constructors.add(Constructor((c) => c
        ..constant = true
        ..optionalParameters.add(Parameter((p) => p
          ..name = 'value'
          ..type = refer('String')
          ..required = true))))
      ..fields.add(Field((f) => f
        ..name = 'value'
        ..type = refer('String')
        ..modifier = FieldModifier.final$))
      ..methods.addAll([
        Method((m) => m
          ..name = 'fromJson'
          ..static = true
          ..returns = refer(name)
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')))
          ..body = Code('return $name(value: json[\'value\'] as String);')),
        Method((m) => m
          ..name = 'toJson'
          ..returns = refer('Map<String, dynamic>')
          ..body = Code('return {\'value\': value};')),
      ])
      ..fields.add(Field((f) => f
        ..name = 'values'
        ..static = true
        ..modifier = FieldModifier.constant
        ..type = refer('List<String>')
        ..assignment = Code(enumValues.map((v) => '\'$v\'').join(', ')))));
  }
}
