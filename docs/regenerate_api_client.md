# API Client Regeneration Process

このドキュメントは、kabu STATION APIクライアントの再生成プロセスについて説明します。

## 前提条件

- OpenAPI仕様ファイル（`open_api_files/kabu_STATION_API.yaml`）が存在すること
- `bin/generate.dart`が存在すること
- プロジェクトの依存関係が正しく設定されていること

## OpenAPI仕様ファイルの準備

### 1. ダウンロードディレクトリの作成

```bash
mkdir -p open_api_files
```

### 2. OpenAPI仕様ファイルのダウンロード

```bash
curl -o open_api_files/kabu_STATION_API.yaml https://kabucom.github.io/kabusapi/reference/kabu_STATION_API.yaml
```

## 再生成手順

### 1. 生成ディレクトリのクリーンアップ

```bash
rm -rf lib/generated && mkdir -p lib/generated
```

### 2. APIクライアントの生成

```bash
dart run bin/generate.dart --input open_api_files/kabu_STATION_API.yaml --output example/lib/api
```

### 3. Freezedコードの生成

```bash
cd example && dart run build_runner build --delete-conflicting-outputs
```

## 生成されるファイル構造

生成されたコードは`example/lib/api`ディレクトリに以下の構造で配置されます：

```
example/lib/api/
└── kabu_station_api/
    ├── index.dart
    ├── retrofit_index.dart
    ├── models_index.dart
    ├── retrofit/
    └── models/
        ├── common/
        ├── info/
        ├── register/
        ├── wallet/
        ├── auth/
        ├── order/
        ├── response/
        └── enums/
```

## 注意事項

1. 再生成を実行する前に、既存の生成コードをすべて削除することが推奨されます。
2. 生成後は、必ずFreezedコードの生成を実行してください。
3. 生成されたコードに問題がある場合は、OpenAPI仕様ファイルを確認してください。

## トラブルシューティング

- `bin/generate.dart`が見つからない場合は、カレントディレクトリがプロジェクトルートであることを確認してください。
- Freezedコードの生成に失敗する場合は、`build_runner`の依存関係が正しく設定されているか確認してください。
- 生成されたコードが空の場合は、OpenAPI仕様ファイルのパスと内容を確認してください。
- OpenAPI仕様ファイルのダウンロードに失敗する場合は、インターネット接続を確認してください。

## generate.shのテスト

### 方法1: 一時ディレクトリでのテスト

`generate.sh`の動作確認は以下の手順で行います：

#### 1. テスト用の一時ディレクトリの作成

```bash
mkdir -p test_generate
cd test_generate
```

#### 2. テスト用のOpenAPI仕様ファイルのダウンロード

```bash
curl -o kabu_STATION_API.yaml https://kabucom.github.io/kabusapi/reference/kabu_STATION_API.yaml
```

#### 3. generate.shの実行

```bash
../generate.sh
```

#### 4. 生成結果の確認

```bash
ls -la lib/api/kabu_station_api/
```

#### 5. クリーンアップ

```bash
cd ..
rm -rf test_generate
```

### 方法2: exampleディレクトリでのテスト

クライアントと同じ環境でテストを実行する場合：

#### 1. exampleディレクトリに移動

```bash
cd example
```

#### 2. 既存の生成コードのクリーンアップ

```bash
rm -rf lib/api
```

#### 3. OpenAPI仕様ファイルのダウンロード

```bash
curl -o ../open_api_files/kabu_STATION_API.yaml https://kabucom.github.io/kabusapi/reference/kabu_STATION_API.yaml
```

#### 4. generate.shの実行

```bash
../generate.sh
```

#### 5. Freezedコードの生成

```bash
dart run build_runner build --delete-conflicting-outputs
```

#### 6. 生成結果の確認

```bash
ls -la lib/api/kabu_station_api/
```

この方法により、クライアントと同じ環境で`generate.sh`の動作を確認できます。また、`build.yaml`の設定も反映されるため、より実際の使用環境に近いテストが可能です。 