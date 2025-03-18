import '../models/openapi_spec.dart';
import 'model_generator.dart';
import 'retrofit_generator.dart';

class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException(this.statusCode, this.message);

  @override
  String toString() => 'ApiException: [$statusCode] $message';
}

class ApiGenerator {
  final OpenApiSpec spec;
  final String outputPath;
  final String basePath;

  ApiGenerator(this.spec, this.outputPath, {this.basePath = ''});

  /// OpenAPI仕様からAPIクライアントとモデルを生成
  Future<void> generate() async {
    // モデルを生成
    final modelGenerator = ModelGenerator(spec, outputPath);
    await modelGenerator.generate();

    // Retrofitのクライアントを生成
    final retrofitGenerator =
        RetrofitGenerator(spec, outputPath, basePath: basePath);
    await retrofitGenerator.generate();
  }
}
