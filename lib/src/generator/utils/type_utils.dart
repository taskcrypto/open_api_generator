import '../../models/openapi_schema.dart';
import 'name_utils.dart';

/// OpenAPI仕様の型をDartの型に変換するためのユーティリティクラス
class TypeUtils {
  /// OpenAPIスキーマからDartの型を取得します。
  ///
  /// 例：
  /// - type: "string" -> "String"
  /// - type: "integer" -> "int"
  /// - type: "array" -> "List<T>"
  /// - enum: [...] -> "EnumType"
  ///
  /// [schema] OpenAPIスキーマ
  /// [required] 必須パラメータかどうか
  /// [parentName] 親のモデル名（enum型を生成する際に使用）
  /// [propertyName] プロパティ名（enum型を生成する際に使用）
  static String getTypeFromSchema(OpenApiSchema schema,
      {bool required = false, String? parentName, String? propertyName}) {
    print('getTypeFromSchema called with:');
    print('  schema: ${schema.toJson()}');
    print('  required: $required');
    print('  parentName: $parentName');
    print('  propertyName: $propertyName');

    // enum型の場合は、対応するenum型を返す
    if (schema.enum_?.isNotEmpty ?? false) {
      final enumName = parentName != null && propertyName != null
          ? '${NameUtils.toPascalCase(parentName)}${NameUtils.toPascalCase(propertyName)}Type'
          : '${NameUtils.toPascalCase(schema.type ?? '')}Type';
      return required ? enumName : '$enumName?';
    }

    // スキーマの型を取得
    final type = schema.type?.toLowerCase() ?? 'string';

    // 型に応じてDartの型を返す
    String dartType;
    switch (type) {
      case 'string':
        // enum型の場合は、対応するenum型を返す
        if (schema.enum_?.isNotEmpty ?? false) {
          final enumName = parentName != null && propertyName != null
              ? '${NameUtils.toPascalCase(parentName)}${NameUtils.toPascalCase(propertyName)}Type'
              : '${NameUtils.toPascalCase(schema.type ?? '')}Type';
          dartType = enumName;
        } else {
          dartType = 'String';
        }
        break;
      case 'integer':
        dartType = 'int';
        break;
      case 'number':
        dartType = 'double';
        break;
      case 'boolean':
        dartType = 'bool';
        break;
      case 'array':
        final itemType = schema.items != null
            ? getTypeFromSchema(schema.items!,
                required: true,
                parentName: parentName,
                propertyName: propertyName)
            : 'dynamic';
        dartType = 'List<$itemType>';
        break;
      case 'object':
        dartType = 'Map<String, dynamic>';
        break;
      default:
        dartType = 'dynamic';
    }

    // 必須でない場合はnullableにする
    if (!required) {
      dartType = '$dartType?';
    }

    return dartType;
  }

  /// OpenAPIのパラメータスキーマからDartのパラメータ型を取得します
  ///
  /// [schema] パラメータの型情報を含むOpenAPIスキーマ
  /// [required] パラメータが必須かどうか
  /// [parentName] 親のモデル名（enum型を生成する際に使用）
  /// [propertyName] プロパティ名（enum型を生成する際に使用）
  static String getParameterType(OpenApiSchema schema,
      {bool required = false, String? parentName, String? propertyName}) {
    return getTypeFromSchema(schema,
        required: required, parentName: parentName, propertyName: propertyName);
  }

  /// OpenAPIの$ref参照から型名を抽出します
  ///
  /// [ref] '#/components/schemas/TypeName' 形式の参照文字列
  static String getRefName(String ref) {
    final parts = ref.split('/');
    return parts.last;
  }

  /// スキーマからデフォルト値を取得します
  ///
  /// [schema] デフォルト値を含むOpenAPIスキーマ
  /// [type] Dartの型名
  static String? getDefaultValue(OpenApiSchema schema, String type) {
    // デフォルト値が指定されていない場合のフォールバック
    if (!type.endsWith('?')) {
      // 非nullableの場合のみデフォルト値を提供
      switch (type) {
        case 'String':
          return "''";
        case 'int':
          return '0';
        case 'double':
        case 'num':
          return '0.0';
        case 'bool':
          return 'false';
        case 'DateTime':
          return 'DateTime.now()';
        case 'BigInt':
          return 'BigInt.zero';
        default:
          if (type.startsWith('List<')) {
            return 'const []';
          } else if (type.startsWith('Map<')) {
            return 'const {}';
          }
      }
    }
    return null;
  }
}
