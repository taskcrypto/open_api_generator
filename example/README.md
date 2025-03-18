# OpenAPI Generator Flutter サンプルプロジェクト

このプロジェクトは、OpenAPI Generator Flutterの使用例を示すサンプルプロジェクトです。

## セットアップ

1. 依存関係をインストールします：

```bash
dart pub get
```

2. コードを生成します：

```bash
dart run build_runner build --delete-conflicting-outputs
```

## 使用方法

1. `lib/main.dart`を実行して、生成されたコードの使用例を確認します：

```bash
dart run lib/main.dart
```

## プロジェクト構造

```
example/
├── lib/
│   ├── main.dart           # メインのサンプルコード
│   └── generated/          # 生成されたコード
│       ├── models/         # モデルクラス
│       └── retrofit/       # Retrofitクライアント
├── open_api_files/         # OpenAPI仕様ファイル
├── pubspec.yaml           # 依存関係の設定
└── build.yaml            # ビルド設定
```

## 生成されるコードの例

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