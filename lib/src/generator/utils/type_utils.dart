import '../../models/openapi_spec.dart';
import 'name_utils.dart';

/// OpenAPI仕様のスキーマ型をDartの型に変換するためのユーティリティクラス
class TypeUtils {
  /// OpenAPIのスキーマからDartの型を取得します
  ///
  /// [schema] 型情報を含むOpenAPIスキーマ
  ///
  /// 以下の変換を行います：
  /// - string -> String
  /// - integer -> int
  /// - number -> double
  /// - boolean -> bool
  /// - array -> List<T>
  /// - object -> Map<String, dynamic>
  /// - $ref -> 参照先の型名
  ///
  /// 配列の場合、items プロパティから要素の型を再帰的に解決します
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

  /// OpenAPIのパラメータスキーマからDartのパラメータ型を取得します
  ///
  /// [schema] パラメータの型情報を含むOpenAPIスキーマ
  ///
  /// 基本的な型変換は [getTypeFromSchema] と同様ですが、
  /// オブジェクト型の場合は dynamic を返します
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

  /// OpenAPIの$ref参照から型名を抽出します
  ///
  /// [ref] '#/components/schemas/TypeName' 形式の参照文字列
  ///
  /// 例：
  /// ```dart
  /// getRefName('#/components/schemas/User') // returns 'User'
  /// ```
  static String getRefName(String ref) {
    final parts = ref.split('/');
    return parts.last;
  }

  /// スキーマからデフォルト値を取得します
  ///
  /// [schema] デフォルト値を含むOpenAPIスキーマ
  /// [type] Dartの型名
  ///
  /// 以下の場合にデフォルト値を返します：
  /// - スキーマにdefaultプロパティが設定されている場合はその値
  /// - プリミティブ型の場合は型に応じた初期値
  /// - コレクション型の場合は空のコレクション
  ///
  /// 上記以外の場合は null を返します
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
