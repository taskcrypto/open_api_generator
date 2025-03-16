# OpenAPI Generator for Flutter

FlutterアプリケーションのためのOpenAPI（Swagger）クライアントジェネレーター。
OpenAPI/Swagger仕様からタイプセーフなDartコードを自動生成し、APIクライアントの実装を効率化します。

## 特徴

- OpenAPI 3.0仕様の完全サポート
- Freezedを使用した型安全なモデル生成
- カスタマイズ可能なコード生成テンプレート
- HTTPクライアントの自動実装
- リクエスト/レスポンスの型安全な処理
- エラーハンドリングの統合
- カスタムヘッダーとインターセプターのサポート
- 詳細なドキュメント生成

## インストール

`pubspec.yaml`に依存関係を追加:

```yaml
dependencies:
  openapi_generator_flutter:
    git:
      url: https://github.com/taskcrypto/open_api_generator
      ref: main  # または特定のタグやコミットハッシュを指定
```

その後、依存関係をインストール:

```bash
flutter pub get
```

### バージョン固定

特定のバージョンを使用する場合は、`ref`パラメータでタグを指定できます：

```yaml
dependencies:
  openapi_generator_flutter:
    git:
      url: url: https://github.com/taskcrypto/open_api_generator
      ref: v1.0.0  # 使用したいバージョンのタグを指定
```

### プライベートリポジトリの場合

プライベートリポジトリの場合は、SSH URLを使用してください：

```yaml
dependencies:
  openapi_generator_flutter:
    git:
      url: git@github.com:taskcrypto/open_api_generator
      ref: main
```

## 使用方法

### コマンドライン

```bash
# OpenAPI仕様からAPIクライアントを生成
dart run bin/generate.dart --input <spec-file> --output <dir> --base-url <url>

# 例：
dart run bin/generate.dart \
  --input api-spec.yaml \
  --output lib/generated \
  --base-url /api/v1

# 環境変数を使用した設定
OPENAPI_OUTPUT_DIR=lib/custom_output OPENAPI_BASE_URL=/api/v2 \
  dart run bin/generate.dart --input api-spec.yaml
```

### シェルスクリプトを使用

より簡単な実行のために`generate.sh`スクリプトを提供:

```bash
# デフォルト設定で実行
./generate.sh

# 入力ファイルを指定して実行
./generate.sh path/to/api.yaml

# 環境変数で出力先とベースURLを指定して実行
OPENAPI_OUTPUT_DIR=lib/custom_output OPENAPI_BASE_URL=/api/v2 ./generate.sh
```

### 環境変数

以下の環境変数がサポートされています：

- `OPENAPI_OUTPUT_DIR`: 生成されたファイルの出力先（デフォルト: lib/generated）
- `OPENAPI_BASE_URL`: APIクライアントのベースURL（デフォルト: http://localhost:8080）
- `OPENAPI_TEMPLATE_DIR`: カスタムテンプレートディレクトリ（オプション）

### プログラムからの使用

```dart
import 'package:openapi_generator_flutter/openapi_generator_flutter.dart';
import 'dart:io';
import 'dart:convert';
import 'package:yaml/yaml.dart';

Future<void> main() async {
  // YAMLファイルを読み込み
  final file = File('api-spec.yaml');
  final content = await file.readAsString();
  
  // YAMLをJSONに変換
  final yamlDoc = loadYaml(content);
  final jsonSpec = json.decode(json.encode(yamlDoc));
  
  // OpenAPI仕様を解析
  final spec = OpenApiSpec.fromJson(jsonSpec);
  
  // ジェネレーターを初期化
  final generator = ApiGenerator(
    spec,
    'lib/generated',
    basePath: '/api/v1',
    options: GeneratorOptions(
      useFreezed: true,
      generateTests: true,
      addNullSafety: true,
    ),
  );
  
  // コード生成を実行
  await generator.generate();
}
```

## 生成されるコードの構造

```
lib/generated/
  ├── index.dart          # すべてのエクスポート
  ├── client.dart         # メインのAPIクライアント
  ├── models/            # モデルクラス
  │   ├── base/         # 基本モデル
  │   ├── requests/     # リクエストモデル
  │   └── responses/    # レスポンスモデル
  ├── api/              # APIエンドポイント実装
  │   ├── pet_api.dart
  │   └── store_api.dart
  └── core/             # コアユーティリティ
      ├── api_exception.dart
      ├── http_client.dart
      └── interceptors/
```

## 使用例

### 基本的な使用方法

- `openapi_config.yaml`

``` yaml
OPENAPI_OUTPUT_DIR: ../APP_NAME/lib/generated
OPENAPI_BASE_URL: https://HOST.COM/OPEN_API_URL.yaml
```

プロジェクト構成例：

``` shell
my-workspace/
├── open_api_generator/     # ジェネレータープロジェクト
│   ├── bin/
│   │   └── generate.dart
│   └── generate-api.sh
└── flutter_client/         # クライアントプロジェクト
    ├── openapi-config.yaml # 設定ファイル
    ├── kabu_station_api.yaml  # OpenAPI仕様ファイル
    └── lib/
        └── generated/      # 生成されたコードの出力先
```
