import 'package:openapi_generator_flutter/openapi_generator_flutter.dart';

void main() async {
  // OpenAPI仕様ファイルからAPIクライアントを生成
  await generateApi(
    inputPath: 'api/openapi.yaml',
    outputPath: 'lib/generated',
    options: GeneratorOptions(
      baseUrl: 'https://api.example.com',
      addAuthHeader: true,
    ),
  );
}

// 生成されたクライアントの使用例
void useGeneratedClient() async {
  final client = ExampleApiClient('https://api.example.com');

  try {
    // APIエンドポイントの呼び出し
    final response = await client.getPets(
      xAPIKEY: 'your-api-key',
      limit: 10,
    );
    print('Pets: $response');

    // 別のエンドポイントの呼び出し
    final pet = await client.getPetById(
      xAPIKEY: 'your-api-key',
      id: 123,
    );
    print('Pet: $pet');
  } catch (e) {
    print('Error: $e');
  }
}
