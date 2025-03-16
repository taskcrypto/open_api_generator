import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class OrdersClient {
  OrdersClient(this.baseUrl);

  final String baseUrl;

  Future<List<OrdersSuccess>> getOrders({
    required String xAPIKEY,
    String? product,
    String? id,
    String? updtime,
    String? details,
    String? symbol,
    String? state,
    String? side,
    String? cashmargin,
  }) async {
    final queryParams = <String, dynamic>{
      if (product != null) 'product': product,
      if (id != null) 'id': id,
      if (updtime != null) 'updtime': updtime,
      if (details != null) 'details': details,
      if (symbol != null) 'symbol': symbol,
      if (state != null) 'state': state,
      if (side != null) 'side': side,
      if (cashmargin != null) 'cashmargin': cashmargin,
    };

    final uri = Uri.parse('${baseUrl}/orders').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as List<dynamic>;
    return json
        .map((e) => OrdersSuccess.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
