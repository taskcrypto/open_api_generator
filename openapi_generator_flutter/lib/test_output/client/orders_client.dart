import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class OrdersClient {
  OrdersClient(this.baseUrl);

  final String baseUrl;

  Future<List<OrdersSuccess>> ordersGet({
    required String xAPIKEY,
    String product,
    String id,
    String updtime,
    String details,
    String symbol,
    String state,
    String side,
    String cashmargin,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/orders'),
      queryParameters: {
        'product': product.toString(),
        'id': id.toString(),
        'updtime': updtime.toString(),
        'details': details.toString(),
        'symbol': symbol.toString(),
        'state': state.toString(),
        'side': side.toString(),
        'cashmargin': cashmargin.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return List<OrdersSuccess>.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
