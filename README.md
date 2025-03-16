# OpenAPI Generator Flutter

Flutter/Dartプロジェクト用のOpenAPI（Swagger）クライアントジェネレーター。OpenAPI仕様からタイプセーフなAPIクライアントを生成します。

## 特徴

- OpenAPI 3.0仕様をサポート
- タイプセーフなAPIクライアントの生成
- カスタマイズ可能なコード生成
- HTTPメソッド（GET、POST、PUT、DELETE）のサポート
- クエリパラメータ、パスパラメータ、ヘッダーパラメータのサポート
- JSONリクエスト/レスポンスのシリアライズ/デシリアライズ

## インストール

```yaml
dependencies:
  openapi_generator_flutter: ^1.0.0
```

## 使い方

1. OpenAPI仕様ファイル（YAML形式）を用意します。

2. 以下のコマンドを実行してAPIクライアントを生成します：

```bash
dart run openapi_generator_flutter generate \
  --input path/to/your/openapi.yaml \
  --output lib/generated
```

3. 生成されたクライアントを使用します：

```dart
import 'package:your_app/generated/api.dart';

void main() async {
  final client = ApiClient('https://api.example.com');
  
  try {
    final response = await client.getPets();
    print(response);
  } catch (e) {
    print('Error: $e');
  }
}
```

## カスタマイズ

生成されるコードは以下の方法でカスタマイズできます：

- カスタムヘッダーの追加
- ベースURLの設定
- エラーハンドリングのカスタマイズ
- 認証情報の設定

詳細は[ドキュメント](https://github.com/yourusername/openapi_generator_flutter/wiki)を参照してください。

## ライセンス

MIT License - 詳細は[LICENSE](LICENSE)ファイルを参照してください。 