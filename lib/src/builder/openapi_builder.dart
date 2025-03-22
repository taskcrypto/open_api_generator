import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:yaml/yaml.dart';

import '../generator/api_generator.dart';
import '../models/openapi_spec.dart';
import '../utils/name_utils.dart';

/// OpenAPIジェネレーターのビルダー
///
/// このビルダーは、OpenAPI仕様からDartのコードを生成します。
/// build.yamlで設定を行い、build_runnerで実行できます。
///
/// 設定例：
/// ```yaml
/// targets:
///   $default:
///     builders:
///       openapi_generator:
///         options:
///           run_generator: true
///           input_folder: "open_api_files"
///           output_folder: "lib/generated"
///           input_urls:
///             - url: "https://example.com/openapi.yaml"
/// ```
class OpenApiBuilder extends Builder {
  OpenApiBuilder(BuilderOptions builderOptions) : options = builderOptions;

  final BuilderOptions options;

  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': [
          'generated/api_manager.dart',
          // 各APIごとのファイルを生成できるように拡張
          'generated/*/api_client.dart',
          'generated/*/models/*.dart',
          'generated/*/apis/*.dart',
        ],
      };

  dynamic _convertYamlToMap(dynamic yaml) {
    if (yaml is YamlMap) {
      return yaml.map(
          (key, value) => MapEntry(key.toString(), _convertYamlToMap(value)));
    }
    if (yaml is YamlList) {
      return yaml.map((item) => _convertYamlToMap(item)).toList();
    }
    return yaml;
  }

  Future<String> _readFile(String path) async {
    try {
      final file = File(path);
      if (!await file.exists()) {
        throw Exception('File not found: $path');
      }
      return await file.readAsString();
    } catch (e) {
      print('OpenApiBuilder.build: ファイル読み込みエラー - $e');
      rethrow;
    }
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    print('========= OPENAPI BUILDER START ========');
    final config = options.config;

    if (config['run_generator'] != true) {
      print('OpenApiBuilder.build: run_generatorがfalseのため終了');
      return;
    }

    final inputFolder = config['input_folder'] as String? ?? 'open_api_files';
    final outputFolder = config['output_folder'] as String? ?? 'lib/generated';
    final inputUrls = _parseInputUrls(config);

    // input_urlsが指定されている場合はダウンロードして実行
    if (inputUrls.isNotEmpty) {
      for (final urlConfig in inputUrls) {
        await _processApiSpec(urlConfig, inputFolder, outputFolder);
      }
    } else {
      // input_urlsが指定されていない場合は、input_folderのファイルを確認
      final inputDir = Directory(inputFolder);
      if (!await inputDir.exists()) {
        print('Error: Input folder does not exist: $inputFolder');
        return;
      }

      final files = await inputDir
          .list()
          .where((entity) =>
              entity is File &&
              (entity.path.endsWith('.yaml') || entity.path.endsWith('.yml')))
          .toList();

      if (files.isEmpty) {
        print('Error: No YAML files found in input folder: $inputFolder');
        return;
      }

      for (final file in files) {
        if (file is File) {
          await _processApiSpec(
            {'url': file.path},
            inputFolder,
            outputFolder,
          );
        }
      }
    }
  }

  List<Map<String, dynamic>> _parseInputUrls(Map<String, dynamic> config) {
    final inputUrls = (config['input_urls'] as List?)?.map((url) {
          if (url is String) {
            return {
              'url': url,
              'output_dir': null,
            };
          }
          final urlMap = _convertYamlToMap(url) as Map<String, dynamic>;
          urlMap.remove('name');
          return urlMap;
        }).toList() ??
        [];

    return inputUrls;
  }

  Future<void> _processApiSpec(
    Map<String, dynamic> urlConfig,
    String inputFolder,
    String baseOutputFolder,
  ) async {
    print('OpenApiBuilder.build: URL設定の処理開始 - $urlConfig');

    final url = urlConfig['url'] as String;
    final apiName = NameUtils.generateApiNameFromUrl(url);
    final customOutputDir = urlConfig['output_dir'] as String?;

    final outputFolder = customOutputDir ?? '$baseOutputFolder/$apiName';
    final filePath =
        url.startsWith('http') ? '$inputFolder/${url.split('/').last}' : url;

    try {
      final content = await _fetchContent(url, filePath);
      final spec = await _parseOpenApiSpec(content);

      print('OpenApiBuilder.build: ApiGeneratorの作成 - $apiName');
      final generator = ApiGenerator(
        spec,
        outputFolder,
      );

      print('OpenApiBuilder.build: ジェネレーターの実行');
      await generator.generate(apiName: apiName);
      print('OpenApiBuilder.build: ジェネレーター実行完了 - $apiName');
    } catch (e, stackTrace) {
      print('OpenApiBuilder.build: エラー発生 ($apiName) - $e');
      print('OpenApiBuilder.build: スタックトレース - $stackTrace');
      rethrow;
    }
  }

  Future<String> _fetchContent(String url, String filePath) async {
    if (url.startsWith('http')) {
      print('OpenApiBuilder.build: HTTPリクエストの送信 - $url');
      final client = HttpClient();
      final uri = Uri.parse(url);
      final response = await client.getUrl(uri);
      final responseData = await response.close();
      final content = await responseData.transform(utf8.decoder).join();

      print('OpenApiBuilder.build: ファイルの書き込み - $filePath');
      await File(filePath).writeAsString(content);
      return content;
    } else {
      print('OpenApiBuilder.build: ローカルファイルの読み込み - $filePath');
      return await _readFile(filePath);
    }
  }

  Future<OpenApiSpec> _parseOpenApiSpec(String content) async {
    print('OpenApiBuilder.build: YAMLの解析開始');
    final yaml = loadYaml(content);
    print('OpenApiBuilder.build: YAMLのMap変換');
    final jsonMap = _convertYamlToMap(yaml) as Map<String, dynamic>;
    print('OpenApiBuilder.build: OpenApiSpecの作成');
    return OpenApiSpec.fromJson(jsonMap);
  }
}

///Root library entry
