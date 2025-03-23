# AIテスト手順

## 前提条件

- `example`ディレクトリが存在すること
- 必要なパッケージがインストールされていること
- インターネット接続が利用可能であること（OpenAPI仕様のダウンロードに必要）

## テスト手順

### 1. build.yamlの作成

`example`ディレクトリに`build.yaml`を作成します：

```yaml
targets:
  $default:
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
            - url: "https://kabucom.github.io/kabusapi/reference/kabu_STATION_API.yaml"
```

### 2. APIクライアントの生成

`build.yaml`を使用してAPIクライアントを生成します：

```bash
cd example && dart run build_runner build --delete-conflicting-outputs
```

## 生成されるファイル構造

生成後、以下のようなファイル構造が作成されます：

```bash
example/lib/generated/
├── index.dart
├── retrofit/
├── retrofit_index.dart
├── models_index.dart
└── models/
    ├── common/
    ├── register/
    ├── wallet/
    ├── auth/
    ├── info/
    ├── response/
    ├── order/
    └── enums/
```

### 認証関連ファイルの例

`models/auth/`ディレクトリには以下のファイルが生成されます：

- `error_response.dart`（および`.g.dart`と`.freezed.dart`）
- `request_token.dart`（および`.g.dart`と`.freezed.dart`）
- `token_success.dart`（および`.g.dart`と`.freezed.dart`）

## 注意事項

- 生成前に既存のファイルを削除する必要がある場合は、`example/lib/generated`ディレクトリを削除してください
- `build.yaml`の設定が正しいことを確認してください
- 生成されたコードは`example/lib/generated`ディレクトリに配置されます
- インターネット接続が必要です（OpenAPI仕様のダウンロードに使用）

## トラブルシューティング

- エラーが発生した場合は、以下を確認してください：
  1. インターネット接続が利用可能か
  2. `build.yaml`の設定が正しいか
  3. 必要なパッケージがインストールされているか
  4. `example`ディレクトリが存在するか
  5. 出力ディレクトリに書き込み権限があるか

## 生成されたコードの修正

生成されたコードにlintエラーがある場合は、以下の手順で修正します：

1. `example/lib/generated/models/`ディレクトリ内の各モデルファイルを確認
2. 以下のようなlintエラーを修正：
   - 不要なimportの削除
   - 未使用の変数の削除
   - コードフォーマットの修正
3. 修正後、再度コードを生成：

   ```bash
   cd example && dart run build_runner build --delete-conflicting-outputs
   ```

## テスト実行

修正後のコードが正しく動作することを確認するために、以下のテストを実行します：

1. 認証関連のテスト
   - トークン取得のテスト
   - エラーレスポンスのテスト

2. その他のAPIエンドポイントのテスト
   - 各エンドポイントのリクエスト/レスポンスの型チェック
   - 実際のAPI呼び出しのテスト
