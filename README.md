# OpenAPI Generator Flutter

OpenAPI仕様からFlutter/Dartのコードを生成するツールです。

## バージョン

現在のバージョン: 0.3.4

## 機能概要

### 1. OpenAPI仕様からのコード生成

- OpenAPI仕様（YAML/JSON）からDartのコードを自動生成
- 生成されるコード：
  - APIクライアント
  - データモデル
  - 列挙型（Enum）
  - 型定義
  - バリデーション

## インストール

```bash
dart pub add openapi_generator_flutter:0.3.4 --dev
```

## 使用方法

### スキーマ定義のenum値更新

YAMLファイル内のスキーマ定義のenum値を自動的に更新します。テーブル形式の説明文から値を抽出し、適切な形式でenum定義を追加します。

```bash
dart run bin/update_schema_enums.dart -i <YAMLファイルのパス>
```

#### オプション

- `-i, --input`: 入力YAMLファイルのパス（必須）

#### 機能

1. テーブル形式の説明文からenum値を抽出
   - `<table>`、`<thead>`、`<tbody>`、`<tr>`、`<td>`タグを含む説明文を検出
   - テーブルの最初の列から値を抽出
   - 重複する値を自動的に除外

2. 既存のenum定義の検出と保護
   - 既存のenum定義がある場合は、新しい値を追加しない
   - 既存の定義をそのまま保持

3. 型に応じた適切な形式での出力
   - 文字列型：一重引用符で囲む（例：`'value'`）
   - 数値型：数値として出力（例：`123`）

4. バックアップ機能
   - 処理前に自動的にバックアップファイルを作成（`.bak`拡張子）
   - 元のファイルは`<ファイル名>.bak`として保存

#### 使用例

```bash
# 例：kabu_station_api.yamlのenum値を更新
dart run bin/update_schema_enums.dart -i example/open_api_files/kabu_station_api.yaml
```

#### 注意点

1. 入力ファイルは有効なYAML形式である必要があります
2. テーブル形式の説明文は以下の形式である必要があります：
   ```yaml
   description: |
     <table>
       <thead>
         <tr>
           <th>値</th>
           <th>説明</th>
         </tr>
       </thead>
       <tbody>
         <tr>
           <td>value1</td>
           <td>説明1</td>
         </tr>
         <tr>
           <td>value2</td>
           <td>説明2</td>
         </tr>
       </tbody>
     </table>
   ```

3. 既存のenum定義がある場合、その定義は保持されます
4. 処理前に必ずバックアップが作成されます

#### ログ出力

スクリプトは処理の各段階でログを出力します：

- スキーマセクションの検出
- プロパティの検出
- 型の検出
- 既存のenum定義の検出
- テーブルからの値抽出
- enum値の追加

これらのログにより、処理の進行状況や問題の特定が容易になります。

## ライセンス

MIT License
