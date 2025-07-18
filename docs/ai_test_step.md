# Pyth Network ベンチマークAPI テスト手順

## 前提条件

- Flutter SDK 3.0.0以上がインストールされていること
- Dart SDK 3.0.0以上がインストールされていること
- `example`ディレクトリが存在すること
- 以下のパッケージが正しいバージョンでインストールされていること：
  - openapi_generator_flutter: 0.3.6
  - build_runner: ^2.4.15
  - freezed: ^2.5.8
  - json_serializable: ^6.9.4
  - retrofit_generator: ^9.1.9
- インターネット接続が利用可能であること

## テスト手順

### 1. ディレクトリ構造の準備

以下はexampleディレクトリで実施する

```bash
cd example
```

```bash
mkdir -p lib/generated
mkdir -p open_api_files
```

[参考] OpenAPI仕様を手動でダウンロードする場合はこのコマンドが使える  
ただし、build.yamlで取得するのが正規手順なので使う必要は無い

```bash
curl -o open_api_files/pyth_benchmark.json https://benchmarks.pyth.network/openapi.json
```

### 2. build.yamlの設定

`example/build.yaml`を作成：

```yaml
targets:
  openapi_generator_example:
    sources:
      - $package$
      - lib/**
      - open_api_files/**
    builders:
      openapi_generator_flutter:
        enabled: true
        options:
          run_generator: true
          input_folder: "open_api_files"
          output_folder: "lib/generated"
          input_urls:
            - "https://benchmarks.pyth.network/openapi.json"
```

### 3. APIクライアントの生成

```bash
dart run build_runner build --delete-conflicting-outputs
```

## エラーハンドリング

### 1. バリデーションエラー

- 422エラーのハンドリング
- `HTTPValidationError`レスポンスの処理

### 2. ネットワークエラー

- タイムアウト処理
- 接続エラー処理

## 注意事項

1. レート制限
   - APIのレート制限に注意
   - テスト実行間隔の調整

2. データ検証
   - 価格データの妥当性確認
   - タイムスタンプの連続性確認

3. タイムゾーン
   - UTCタイムスタンプの取り扱い
   - タイムゾーン変換の正確性

## トラブルシューティング

### 1. 生成コードのエラー

- freezedの生成コード確認
- retrofitの生成コード確認
- 必要に応じて手動修正

### 2. APIアクセスエラー

- URLの有効性確認
- ネットワーク接続確認
- プロキシ設定の確認

## 確認項目

1. レスポンス形式
   - JSONフォーマットの正確性
   - 必須フィールドの存在

2. データ整合性
   - 価格データの連続性
   - タイムスタンプの正確性

3. エラーハンドリング
   - 各種エラーケースの適切な処理
   - エラーメッセージの正確な表示
