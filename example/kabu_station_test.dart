import 'package:dio/dio.dart';
import 'package:openapi_generator_flutter/generated/index.dart';

void main() async {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:18080/kabusapi',
    headers: {
      'Content-Type': 'application/json',
      'X-API-KEY': 'your_api_key_here',
    },
  ));

  final client = ApiClient(
    'http://localhost:18080/kabusapi',
    options: dio.options,
  );

  try {
    // 注文発注のテスト
    final order = RequestSendOrder(
      symbol: '9433',
      exchange: 1,
      securityType: 1,
      side: 'Buy',
      cashMargin: 1,
      delivType: 2,
      fundType: 'AA',
      accountType: 2,
      qty: 100,
      price: 2850.5,
      expireDay: 20240316,
      frontOrderType: 20, // 指値注文
    );

    print('Request: ${order.toJson()}');

    // 実際のAPIコールはコメントアウト
    // final response = await client.order.sendorderPost(body: order);
    // print('Response: ${response.toJson()}');
  } catch (e) {
    if (e is DioException) {
      print('Error: ${e.response?.data}');
    } else {
      print('Error: $e');
    }
  }
}
