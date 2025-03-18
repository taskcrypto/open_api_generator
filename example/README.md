# OpenAPI Generator Flutter Example

OpenAPI Generator Flutterのサンプルプロジェクトです。

## セットアップ

1. 依存関係をインストールします：

```bash
flutter pub get
```

2. OpenAPI仕様ファイルを`openapi`ディレクトリに配置します。

3. コードを生成します：

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## 使用方法

1. 生成されたコードは`lib/generated`ディレクトリに出力されます。

2. 生成されたコードを使用してAPIクライアントを作成します：

```dart
import 'package:dio/dio.dart';
import 'package:openapi_generator_example/generated/retrofit/auth/auth_client.dart';
import 'package:openapi_generator_example/generated/models/auth/request_token.dart';

void main() async {
  final dio = Dio();
  final client = AuthClient(dio, baseUrl: 'https://api.example.com');

  try {
    final response = await client.postToken(
      body: RequestToken(aPIPassword: 'your-api-password'),
    );
    print(response.data);
  } catch (e) {
    print('Error: $e');
  }
}
```

## 生成されるファイル構造

```
lib/generated/
  ├── models/           # モデルクラス
  │   ├── auth/        # 認証関連のモデル
  │   ├── order/       # 注文関連のモデル
  │   └── ...
  ├── retrofit/        # Retrofitクライアント
  │   ├── auth/        # 認証関連のクライアント
  │   ├── order/       # 注文関連のクライアント
  │   └── ...
  ├── models_index.dart
  └── retrofit_index.dart
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