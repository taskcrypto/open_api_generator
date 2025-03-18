# OpenAPI Generator Flutter

OpenAPI仕様からFlutter用のAPIクライアントとモデルを生成するツールです。

## 機能

- OpenAPI仕様（YAML/JSON）からFlutter用のコードを生成
- モデルクラスの生成（freezedを使用）
- Retrofitクライアントの生成
- カテゴリ別のファイル構造
- 複数のOpenAPI仕様ファイルのサポート

## バージョン

現在のバージョン: 0.2.0

## インストール

`pubspec.yaml`に以下の依存関係を追加してください：

```yaml
dependencies:
  openapi_generator_flutter: ^0.2.0
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  retrofit: ^4.1.0
  dio: ^5.4.0

dev_dependencies:
  build_runner: ^2.4.8
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  retrofit_generator: ^8.1.0
```

## 使用方法

1. OpenAPI仕様ファイル（YAML/JSON）を`openapi`ディレクトリに配置します。

2. `build.yaml`に以下の設定を追加します：

```yaml
targets:
  openapi_generator_flutter:openapi_generator_flutter:
    builders:
      openapi_generator_flutter:
        enabled: true
        options:
          run_generator: true
          input_folder: "openapi"
          output_folder: "lib/generated"
          input_urls: ["openapi/openapi.yaml"]
```

3. 以下のコマンドを実行してコードを生成します：

```bash
dart run build_runner build --delete-conflicting-outputs
```

## 生成されるファイル構造

```
lib/generated/
  ├── models/           # モデルクラス
  │   ├── auth/        # 認証関連のモデル
  │   ├── order/       # 注文関連のモデル
  │   └── ...
  ├── retrofit/        # Retrofitクライアント
  │   ├── auth/        # 認証関連のクライアント
  │   ├── order/       # 注文関連のクライアント
  │   └── ...
  ├── models_index.dart
  └── retrofit_index.dart
```

## 使用例

```dart
import 'package:dio/dio.dart';
import 'package:your_app/generated/retrofit/auth/auth_client.dart';
import 'package:your_app/generated/models/auth/request_token.dart';

void main() async {
  final dio = Dio();
  final client = AuthClient(dio, baseUrl: 'https://api.example.com');

  try {
    final response = await client.postToken(
      body: RequestToken(aPIPassword: 'your-api-password'),
    );
    print(response.data);
  } catch (e) {
    print('Error: $e');
  }
}
```

## ライセンス

MIT License
