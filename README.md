# OpenAPI Generator Flutter

OpenAPI仕様からDartのAPIクライアントとモデルを生成するツールです。

## 機能

- OpenAPI仕様（YAML/JSON）からのコード生成
- モデルクラスの生成（freezed + json_serializable）
- Retrofitクライアントの生成
- build_runnerによる自動生成

## インストール

`pubspec.yaml`に以下の依存関係を追加してください：

```yaml
dependencies:
  openapi_generator_flutter: ^1.1.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  retrofit: ^4.1.0
  dio: ^5.4.0

dev_dependencies:
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  retrofit_generator: ^8.1.0
```

## 使用方法

1. OpenAPI仕様ファイルを配置するか、URLを指定します。

2. プロジェクトのルートに`build.yaml`を作成し、設定を行います：

```yaml
targets:
  $default:
    builders:
      openapi_generator:
        enabled: true
        options:
          run_generator: true
          input_folder: "open_api_files"  # OpenAPI仕様ファイルの配置先
          output_folder: "lib/generated"  # 生成されたコードの出力先
          input_urls:  # OpenAPI仕様のURL（オプション）
            - url: "https://example.com/openapi.yaml"
```

3. build_runnerを実行してコードを生成します：

```bash
dart run build_runner build --delete-conflicting-outputs
```

## 生成されるコード

### モデルクラス

```dart
@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
```

### Retrofitクライアント

```dart
@RestApi()
abstract class OrderClient {
  factory OrderClient(Dio dio, {String baseUrl}) = _OrderClient;

  @GET('/orders')
  Future<List<Order>> getOrders({
    @Query('status') String? status,
  });

  @POST('/orders')
  Future<Order> createOrder(@Body() Order order);
}
```

## サンプルプロジェクト

[サンプルプロジェクト](example)を参照してください。

## ライセンス

MIT
