import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:yaml/yaml.dart';

import '../generator/api_generator.dart';
import '../models/openapi_spec.dart';

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
  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': ['generated/api_manager.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    print('========= OPENAPI BUILDER START ========');
    print('OpenApiBuilder.build: 開始');
    print('buildStep = ${buildStep}');
    print('buildStep.inputId = ${buildStep.inputId}');
    print('buildStep.inputId.path = ${buildStep.inputId.path}');
    print('buildStep.inputId.package = ${buildStep.inputId.package}');
    print('buildStep.inputId.toString = ${buildStep.inputId.toString()}');
    print('========= LOAD CONFIG START ========');
    final config = await _loadConfig(buildStep);
    print('========= LOAD CONFIG END ========');
    print('OpenApiBuilder.build: 設定読み込み完了 - $config');
    print('OpenApiBuilder.build: 設定の詳細:');
    print('  - run_generator: ${config['run_generator']}');
    print('  - input_folder: ${config['input_folder']}');
    print('  - output_folder: ${config['output_folder']}');
    print('  - input_urls: ${config['input_urls']}');
    print('========= OPENAPI BUILDER Base Values END ========');
    if (config['run_generator'] != true) {
      print('OpenApiBuilder.build: run_generatorがfalseのため終了');
      return;
    }

    final inputFolder = config['input_folder'] as String? ?? 'open_api_files';
    final outputFolder = config['output_folder'] as String? ?? 'lib/generated';
    final inputUrls = (config['input_urls'] as List?)?.map((url) {
          if (url is YamlMap) {
            return Map<String, dynamic>.from(url);
          }
          return url as Map<String, dynamic>;
        }).toList() ??
        [];

    print(
        'OpenApiBuilder.build: 設定値 - inputFolder: $inputFolder, outputFolder: $outputFolder, inputUrls: $inputUrls');

    // URLからOpenAPI仕様をダウンロード
    for (final urlConfig in inputUrls) {
      print('OpenApiBuilder.build: URL設定の処理開始 - $urlConfig');
      final url = urlConfig['url'] as String;
      final fileName = url.split('/').last;
      final outputPath = '$inputFolder/$fileName';

      print(
          'OpenApiBuilder.build: ダウンロード開始 - url: $url, outputPath: $outputPath');

      try {
        print('OpenApiBuilder.build: HttpClientの作成');
        final client = HttpClient();
        print('OpenApiBuilder.build: URLのパース - $url');
        final uri = Uri.parse(url);
        print('OpenApiBuilder.build: リクエストの送信');
        final response = await client.getUrl(uri);
        print('OpenApiBuilder.build: レスポンスの取得');
        final responseData = await response.close();
        print('OpenApiBuilder.build: レスポンスの読み込み');
        final content = await responseData.transform(utf8.decoder).join();
        print('OpenApiBuilder.build: ファイルの書き込み - $outputPath');
        await File(outputPath).writeAsString(content);
        print('OpenApiBuilder.build: ダウンロード完了 - $outputPath');

        print('OpenApiBuilder.build: YAMLの解析開始');
        final yaml = loadYaml(content);
        print('OpenApiBuilder.build: OpenApiSpecの作成');
        final spec = OpenApiSpec.fromJson(yaml);
        print('OpenApiBuilder.build: ApiGeneratorの作成');
        final generator = ApiGenerator(spec, outputFolder);
        print('OpenApiBuilder.build: ジェネレーターの実行');
        await generator.generate();
        print('OpenApiBuilder.build: ジェネレーター実行完了');
      } catch (e, stackTrace) {
        print('OpenApiBuilder.build: エラー発生 - $e');
        print('OpenApiBuilder.build: スタックトレース - $stackTrace');
        rethrow;
      }
    }
  }

  /// 設定ファイルを読み込む
  Future<Map<String, dynamic>> _loadConfig(BuildStep buildStep) async {
    try {
      print('OpenApiBuilder._loadConfig: 開始');
      print(
          'OpenApiBuilder._loadConfig: buildStep.inputId = ${buildStep.inputId}');

      final file = File(buildStep.inputId.path);
      var contents = await file.readAsString();

      Map<String, dynamic> contentMap;

      if (buildStep.inputId.path.endsWith('.yaml')) {
        final t = loadYaml(contents) as YamlMap;
        //contentMap = t.toMap();
        contentMap =
            t.nodes.map((key, value) => MapEntry(key.toString(), value.value));
      } else {
        contentMap = jsonDecode(contents) as Map<String, dynamic>;
      }

      // クライアント側のbuild.yamlを読み込む
      final clientConfigAsset =
          AssetId(buildStep.inputId.package, 'build.yaml');
      print(
          'OpenApiBuilder._loadConfig: クライアントの設定ファイル読み込み - $clientConfigAsset');

      try {
        final clientConfigContent =
            await buildStep.readAsString(clientConfigAsset);
        print('OpenApiBuilder._loadConfig: クライアントの設定内容 - $clientConfigContent');
        final clientConfig = loadYaml(clientConfigContent);
        final clientOptions = _getOptionsFromConfig(clientConfig);
        print('OpenApiBuilder._loadConfig: クライアントの設定 - $clientOptions');
        return clientOptions;
      } catch (e) {
        print('OpenApiBuilder._loadConfig: クライアントの設定読み込みに失敗 - $e');
      }

      // ライブラリ側のbuild.yamlを読み込む
      final libraryConfigAsset =
          AssetId('openapi_generator_flutter', 'lib/build.yaml');
      print(
          'OpenApiBuilder._loadConfig: ライブラリの設定ファイル読み込み - $libraryConfigAsset');

      try {
        final libraryConfigContent =
            await buildStep.readAsString(libraryConfigAsset);
        print('OpenApiBuilder._loadConfig: ライブラリの設定内容 - $libraryConfigContent');
        final libraryConfig = loadYaml(libraryConfigContent);
        final libraryOptions = _getOptionsFromConfig(libraryConfig);
        print('OpenApiBuilder._loadConfig: ライブラリの設定 - $libraryOptions');
        return libraryOptions;
      } catch (e) {
        print('OpenApiBuilder._loadConfig: ライブラリの設定読み込みに失敗 - $e');
      }

      return {};
    } catch (e, stackTrace) {
      print('OpenApiBuilder._loadConfig: エラー発生 - $e');
      print('OpenApiBuilder._loadConfig: スタックトレース - $stackTrace');
      return {};
    }
  }

  /// 設定からオプションを取得
  Map<String, dynamic> _getOptionsFromConfig(dynamic config) {
    if (config is! YamlMap) return {};

    final targets = config['targets'];
    if (targets is! YamlMap) return {};

    final defaultTarget = targets['\$default'];
    if (defaultTarget is! YamlMap) return {};

    final builders = defaultTarget['builders'];
    if (builders is! YamlMap) return {};

    final builder = builders['openapi_generator_flutter'];
    if (builder is! YamlMap) return {};

    final options = builder['options'];
    if (options is! YamlMap) return {};

    return Map<String, dynamic>.from(options);
  }
}
