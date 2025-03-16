#!/bin/sh

# デフォルト値の設定
INPUT_FILE=${1:-"kabu_station_api.yaml"}
OUTPUT_DIR=${OPENAPI_OUTPUT_DIR:-"lib/generated_kabu"}
BASE_URL=${OPENAPI_BASE_URL:-"/kabusapi"}

# 環境変数の設定
export OPENAPI_OUTPUT_DIR=$OUTPUT_DIR
export OPENAPI_BASE_URL=$BASE_URL

# 生成コマンドの実行
dart run bin/generate.dart --input $INPUT_FILE 