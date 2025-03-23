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

    // 既存の区切り文字を_に置換
    var result = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_');

    // 大文字の連続を1つの単語として扱う
    result = result.replaceAllMapped(
      RegExp(r'[A-Z]+'),
      (match) {
        final word = match.group(0)!;
        // 単語の先頭でない場合は_を追加
        return match.start > 0 ? '_${word.toLowerCase()}' : word.toLowerCase();
      },
    );

    // 連続する_を1つにまとめる
    result = result.replaceAll(RegExp(r'_+'), '_');
    // 先頭と末尾の_を削除
    result = result.replaceAll(RegExp(r'^_|_$'), '');

    return result.toLowerCase();
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
