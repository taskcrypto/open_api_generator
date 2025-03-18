import '../../models/openapi_schema.dart';

/// OpenAPI仕様の型をDartの型に変換するためのユーティリティクラス
class TypeUtils {
  /// OpenAPIスキーマからDartの型を取得します。
  ///
  /// 例：
  /// - type: "string" -> "String"
  /// - type: "integer" -> "int"
  /// - type: "array" -> "List<T>"
  ///
  /// [schema] OpenAPIスキーマ
  /// [required] 必須パラメータかどうか
  static String getTypeFromSchema(OpenApiSchema schema,
      {bool required = false}) {
    // スキーマの型を取得
    final type = schema.type?.toLowerCase() ?? 'string';

    // 型に応じてDartの型を返す
    String dartType;
    switch (type) {
      case 'string':
        dartType = 'String';
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
            ? getTypeFromSchema(schema.items!, required: true)
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
  static String getParameterType(OpenApiSchema schema,
      {bool required = false}) {
    return getTypeFromSchema(schema, required: required);
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
