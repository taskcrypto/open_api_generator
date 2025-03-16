#!/bin/sh

# デフォルトの設定ファイルパス
CONFIG_FILE="openapi_config.yaml"

# 設定ファイルの存在確認
if [ ! -f "$CONFIG_FILE" ]; then
    echo "設定ファイル $CONFIG_FILE が見つかりません"
    exit 1
fi

# YAMLファイルを読み込んで変数に設定
eval $(cat "$CONFIG_FILE" | python3 -c '
import sys, yaml, json
try:
    config = yaml.safe_load(sys.stdin)
    print(f"INPUT_FILE=\"{config.get(\"input\", \"kabu_station_api.yaml\")}\"")
    print(f"OUTPUT_DIR=\"{config.get(\"output\", \"lib/generated\")}\"")
    print(f"BASE_URL=\"{config.get(\"base_url\", \"/kabusapi\")}\"")
except Exception as e:
    print(f"echo \"YAMLファイルの解析エラー: {str(e)}\"", file=sys.stderr)
    print("exit 1")
')

# 環境変数の設定
export OPENAPI_OUTPUT_DIR=$OUTPUT_DIR
export OPENAPI_BASE_URL=$BASE_URL

echo "入力ファイル: $INPUT_FILE"
echo "出力先: $OUTPUT_DIR"
echo "ベースURL: $BASE_URL"

# 生成コマンドの実行
dart run bin/generate.dart --input "$INPUT_FILE"

# コード生成が成功した場合、Freezedコードを生成
if [ $? -eq 0 ]; then
    echo "APIクライアントの生成が完了しました"
    echo "Freezedコードを生成します..."
    
    # 出力ディレクトリの親ディレクトリに移動
    cd "$(dirname "$OUTPUT_DIR")"
    
    # build_runnerを実行
    dart run build_runner build --delete-conflicting-outputs
else
    echo "コード生成中にエラーが発生しました"
    exit 1
fi 