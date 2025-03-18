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
    final config = await _loadConfig(buildStep);
    if (config['run_generator'] != true) {
      return;
    }

    final inputFolder = config['input_folder'] as String? ?? 'open_api_files';
    final outputFolder = config['output_folder'] as String? ?? 'lib/generated';
    final inputUrls =
        (config['input_urls'] as List?)?.cast<Map<String, dynamic>>() ?? [];

    // URLからOpenAPI仕様をダウンロード
    for (final urlConfig in inputUrls) {
      final url = urlConfig['url'] as String;
      final fileName = url.split('/').last;
      final outputPath = '$inputFolder/$fileName';

      // URLからファイルをダウンロード
      final response = await HttpClient().getUrl(Uri.parse(url));
      final responseData = await response.close();
      final content = await responseData.transform(utf8.decoder).join();
      await File(outputPath).writeAsString(content);

      // ジェネレーターを実行
      final generator = ApiGenerator(
        OpenApiSpec.fromJson(loadYaml(content)),
        outputFolder,
      );
      await generator.generate();
    }
  }

  /// 設定ファイルを読み込む
  Future<Map<String, dynamic>> _loadConfig(BuildStep buildStep) async {
    try {
      final configAsset = AssetId(buildStep.inputId.package, 'build.yaml');
      final configContent = await buildStep.readAsString(configAsset);
      final config = loadYaml(configContent) as Map<String, dynamic>;
      return config['targets']?['\$default']?['builders']
                  ?['openapi_generator_flutter']?['options']
              as Map<String, dynamic>? ??
          {};
    } catch (e) {
      return {};
    }
  }
}
