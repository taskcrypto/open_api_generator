import '../../models/openapi_spec.dart';
import 'name_utils.dart';

class TypeUtils {
  static String getTypeFromSchema(Schema schema) {
    if (schema.ref != null) {
      return NameUtils.normalizeClassName(getRefName(schema.ref!));
    }

    switch (schema.type) {
      case 'string':
        return 'String';
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'array':
        if (schema.items != null) {
          final itemType = getTypeFromSchema(schema.items!);
          return 'List<$itemType>';
        }
        return 'List<dynamic>';
      case 'object':
      default:
        return 'Map<String, dynamic>';
    }
  }

  static String getParameterType(Schema schema) {
    switch (schema.type) {
      case 'string':
        return 'String';
      case 'integer':
        return 'int';
      case 'number':
        return 'double';
      case 'boolean':
        return 'bool';
      case 'array':
        if (schema.items != null) {
          return 'List<${getParameterType(schema.items!)}>';
        }
        return 'List<dynamic>';
      default:
        return 'dynamic';
    }
  }

  static String getRefName(String ref) {
    final parts = ref.split('/');
    return parts.last;
  }

  static String? getDefaultValue(Schema schema, String type) {
    if (schema.default_ != null) {
      if (type == 'String') {
        return "'${schema.default_}'";
      } else if (type == 'int' || type == 'double' || type == 'bool') {
        return '${schema.default_}';
      }
    }

    switch (type) {
      case 'String':
        return "''";
      case 'int':
        return '0';
      case 'double':
        return '0.0';
      case 'bool':
        return 'false';
      case 'List<String>':
      case 'List<int>':
      case 'List<double>':
      case 'List<bool>':
        return 'const []';
      case 'Map<String, dynamic>':
        return 'const {}';
      default:
        if (type.startsWith('List<')) {
          return 'const []';
        }
        return null;
    }
  }
}
