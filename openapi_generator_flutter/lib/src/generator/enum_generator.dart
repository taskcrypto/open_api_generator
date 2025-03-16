import 'package:code_builder/code_builder.dart' as code_builder;

import '../models/openapi_spec.dart';
import 'utils/name_utils.dart';

class EnumGenerator {
  static code_builder.Class generateEnumClass(String name, Schema schema) {
    final normalizedName = NameUtils.normalizeClassName(name);

    return code_builder.Class((b) {
      b.name = normalizedName;
      b.annotations.addAll([
        code_builder.refer('freezed'),
        code_builder.refer('JsonEnum'),
      ]);
      b.mixins.add(code_builder.refer('_\$$normalizedName'));

      // 列挙値の定義
      for (final value in schema.enum_!) {
        final normalizedValue =
            NameUtils.normalizePropertyName(value.toLowerCase());
        b.fields.add(code_builder.Field((fb) {
          fb.name = normalizedValue;
          fb.static = true;
          fb.modifier = code_builder.FieldModifier.constant;
          fb.type = code_builder.refer(normalizedName);
          fb.assignment = code_builder.Code('$normalizedName(\'$value\')');
        }));
      }

      // コンストラクタの追加
      b.constructors.addAll([
        code_builder.Constructor((c) => c
          ..factory = true
          ..constant = true
          ..optionalParameters.add(code_builder.Parameter((p) => p
            ..name = 'value'
            ..type = code_builder.refer('String')))
          ..lambda = true
          ..redirect = code_builder.refer('_$normalizedName')),
        code_builder.Constructor((c) => c
          ..factory = true
          ..name = 'fromJson'
          ..lambda = true
          ..requiredParameters.add(code_builder.Parameter((p) => p
            ..name = 'json'
            ..type = code_builder.refer('String')))
          ..body = code_builder.Code('$normalizedName(json)')),
      ]);

      // valuesゲッターの追加
      b.methods.add(code_builder.Method((m) => m
        ..static = true
        ..returns = code_builder.refer('List<$normalizedName>')
        ..name = 'values'
        ..type = code_builder.MethodType.getter
        ..lambda = true
        ..body = code_builder.Code(
            '[${schema.enum_!.map((e) => NameUtils.normalizePropertyName(e.toLowerCase())).join(', ')}]')));
    });
  }
}
