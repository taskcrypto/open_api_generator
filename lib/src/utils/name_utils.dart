/// 命名規則に関するユーティリティクラス
class NameUtils {
  /// 文字列をスネークケースに変換します
  ///
  /// 例:
  /// - "petStore" -> "pet_store"
  /// - "PetStore" -> "pet_store"
  /// - "pet-store" -> "pet_store"
  /// - "pet.store" -> "pet_store"
  static String toSnakeCase(String input) {
    if (input.isEmpty) return input;

    return input
        // キャメルケースやパスカルケースの単語の境界に_を挿入
        .replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => '_${match.group(0)?.toLowerCase()}',
        )
        // 特殊文字を_に置換
        .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_')
        // 先頭の_を削除
        .replaceAll(RegExp(r'^_'), '')
        // 連続する_を1つにまとめる
        .replaceAll(RegExp(r'_+'), '_')
        .toLowerCase();
  }

  /// URLからAPI名を生成します
  ///
  /// 例:
  /// - "https://example.com/pet-store-api.yaml" -> "pet_store_api"
  /// - "path/to/local/user_management.yaml" -> "user_management"
  /// - "https://api.example.com/v1/openapi.yaml" -> "openapi"
  static String generateApiNameFromUrl(String url) {
    final fileName = url.split('/').last.split('.').first;
    return toSnakeCase(fileName);
  }
}
