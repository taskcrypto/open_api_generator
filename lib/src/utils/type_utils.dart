import '../models/openapi_spec.dart';

class TypeUtils {
  static String getRefName(String ref) {
    final parts = ref.split('/');
    return parts.last;
  }

  static String getDartTypeFromSchema(Schema schema, {OpenApiSpec? spec}) {
    if (schema.ref != null) {
      final refName = getRefName(schema.ref!);
      if (spec?.components?.schemas?[refName] != null) {
        final refSchema = spec!.components!.schemas![refName]!;
        if (refSchema.type == 'object') {
          return refName;
        }
        return getDartTypeFromSchema(refSchema, spec: spec);
      }
      return refName;
    }

    switch (schema.type) {
      case 'integer':
        return schema.format == 'int64' ? 'int' : 'int';
      case 'number':
        return schema.format == 'float' ? 'double' : 'double';
      case 'string':
        if (schema.enum_ != null) {
          return schema.title ?? getEnumNameFromRef(schema.ref) ?? 'String';
        }
        return 'String';
      case 'boolean':
        return 'bool';
      case 'array':
        if (schema.items?.ref != null) {
          final itemType = getRefName(schema.items!.ref!);
          if (spec?.components?.schemas?[itemType] != null) {
            final refSchema = spec!.components!.schemas![itemType]!;
            if (refSchema.type == 'object') {
              return 'List<$itemType>';
            }
            return 'List<${getDartTypeFromSchema(refSchema, spec: spec)}>';
          }
          return 'List<$itemType>';
        }
        final itemType = schema.items == null
            ? 'dynamic'
            : getDartTypeFromSchema(schema.items!, spec: spec);
        return 'List<$itemType>';
      case 'object':
        if (schema.additionalProperties != null) {
          final valueType = schema.additionalProperties!.ref != null
              ? getRefName(schema.additionalProperties!.ref!)
              : getDartTypeFromSchema(schema.additionalProperties!, spec: spec);
          return 'Map<String, $valueType>';
        }
        if (schema.properties?.containsKey('HoldID') == true &&
            schema.properties?.containsKey('Qty') == true) {
          return 'Positions';
        }
        return 'Map<String, dynamic>';
      default:
        return 'dynamic';
    }
  }

  static String? getEnumNameFromRef(String? ref) {
    if (ref == null) return null;
    final parts = ref.split('/');
    return parts.last;
  }
}
