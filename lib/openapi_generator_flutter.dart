/// OpenAPI Generator Flutter
/// OpenAPI仕様からFlutter/Dart用のAPIクライアントを生成するライブラリ
library openapi_generator_flutter;

import 'dart:io';

import 'package:yaml/yaml.dart';

export 'src/generator/method_generator.dart';
export 'src/generator/utils/type_utils.dart';
export 'src/models/openapi_spec.dart';

/// APIクライアント生成のオプション
class GeneratorOptions {
  final String baseUrl;
  final bool addAuthHeader;
  final String? customHeader;

  GeneratorOptions({
    required this.baseUrl,
    this.addAuthHeader = false,
    this.customHeader,
  });
}

/// OpenAPI仕様からAPIクライアントを生成する
Future<void> generateApi({
  required String inputPath,
  required String outputPath,
  GeneratorOptions? options,
}) async {
  final file = File(inputPath);
  if (!await file.exists()) {
    throw Exception('Input file not found: $inputPath');
  }

  final content = await file.readAsString();
  final yaml = loadYaml(content);

  // 出力ディレクトリの作成
  final outputDir = Directory(outputPath);
  if (!await outputDir.exists()) {
    await outputDir.create(recursive: true);
  }

  // TODO: OpenAPI仕様の解析とコード生成の実装
  // ここに実装を追加
}
