# Exampleディレクトリでのテスト実行

このドキュメントは、`example`ディレクトリを使用してAPIクライアントの生成をテストする方法について説明します。

## 概要

このテスト方法では、実際のクライアントと同じ環境（`example`ディレクトリ）でAPIクライアントの生成をテストします。これにより、`build.yaml`の設定も反映された、より実際の使用環境に近いテストが可能です。

## 前提条件

- `example`ディレクトリが存在すること
- `example`ディレクトリ内に`build.yaml`が存在すること
- プロジェクトの依存関係が正しく設定されていること

## テスト手順

### 1. exampleディレクトリに移動

```bash
cd example
```

### 2. 既存の生成コードのクリーンアップ

```bash
rm -rf lib/generated
```

### 3. generate.shの実行

```bash
../generate.sh
```

### 4. Freezedコードの生成

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 5. 生成結果の確認

```bash
ls -la lib/api/kabu_station_api/
```

## 期待される結果

生成されたコードは`example/lib/api`ディレクトリに以下の構造で配置されます：

``` bash
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

## トラブルシューティング

1. `build.yaml`が見つからない場合
   - `example`ディレクトリ内に`build.yaml`が存在することを確認してください
   - 必要に応じて`build.yaml`を作成してください

2. 依存関係のエラーが発生する場合
   - `example/pubspec.yaml`の依存関係が正しく設定されているか確認してください
   - `dart pub get`を実行して依存関係を更新してください

3. 生成されたコードが空の場合
   - OpenAPI仕様ファイルが正しくダウンロードされているか確認してください
   - `generate.sh`の実行時にエラーが発生していないか確認してください

4. Freezedコードの生成に失敗する場合
   - `build_runner`の依存関係が正しく設定されているか確認してください
   - `build.yaml`の設定が正しいか確認してください

## 注意事項

1. このテスト方法は実際のクライアント環境で実行されるため、既存のコードに影響を与える可能性があります
2. テスト前に必ず既存の生成コードをクリーンアップしてください
3. テスト後は必要に応じて生成されたコードを確認し、問題がないことを確認してください
