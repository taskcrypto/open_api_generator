# OpenAPI Generator for Flutter

AIコーディングの練習ライブラリです
使ってもいいですが、一歳責任は持てません

FlutterアプリケーションのためのOpenAPI（Swagger）クライアントジェネレーター。

## 特徴

- OpenAPI 3.0仕様をサポート
- Freezedを使用した型安全なモデル生成
- タグベースのクライアント生成
- リクエスト/レスポンスモデルの自動生成
- カスタマイズ可能なコード生成

## インストール

```yaml
dependencies:
  openapi_generator_flutter: ^1.0.0
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

プロジェクトに含まれる`generate.sh`スクリプトを使用して、より簡単に生成を実行できます：

```bash
# デフォルト設定で実行
./generate.sh

# 入力ファイルを指定して実行
./generate.sh path/to/api.yaml

# 環境変数で出力先とベースURLを指定して実行
OPENAPI_OUTPUT_DIR=lib/custom_output OPENAPI_BASE_URL=/api/v2 ./generate.sh
```

以下の環境変数がサポートされています：

- `OPENAPI_OUTPUT_DIR`: 生成されたファイルの出力先ディレクトリ（デフォルト: lib/generated）
- `OPENAPI_BASE_URL`: APIクライアントのベースURL（デフォルト: http://localhost:8080）

### プログラムから

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
  final generator = ApiGenerator(spec, 'lib/generated', basePath: '/api/v1');
  
  // コード生成を実行
  await generator.generate();
}
```

### 生成されるコードの構造

```
lib/generated/
  ├── index.dart          # すべてのモデルとクライアントのエクスポート
  ├── client.dart         # メインのAPIクライアント
  ├── models/            # モデルクラス
  │   ├── pet/          # タグごとのディレクトリ
  │   │   ├── pet.dart
  │   │   └── tag.dart
  │   └── store/
  │       └── order.dart
  └── client/           # APIクライアントクラス
      ├── pet_client.dart
      └── store_client.dart
```

### 生成されたコードの使用例

```dart
import 'package:your_app/generated/index.dart';

void main() async {
  // APIクライアントの初期化
  final client = ApiClient('https://api.example.com');

  // ペットを検索
  try {
    final pets = await client.pet.findPetsByStatus(['available']);
    print('利用可能なペット: ${pets.length}匹');
  } on ApiException catch (e) {
    print('エラー: [${e.statusCode}] ${e.message}');
  }

  // 新しいペットを追加
  final newPet = Pet(
    name: 'モフモフ',
    photoUrls: ['https://example.com/mofumofu.jpg'],
    category: Category(id: 1, name: '犬'),
    tags: [Tag(id: 1, name: 'かわいい')],
    status: 'available',
  );
  
  try {
    await client.pet.addPet(newPet);
    print('ペットが追加されました');
  } on ApiException catch (e) {
    print('エラー: [${e.statusCode}] ${e.message}');
  }
}
```

## ライセンス

MIT License
