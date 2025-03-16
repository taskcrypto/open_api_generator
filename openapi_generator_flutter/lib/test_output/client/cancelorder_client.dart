import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class CancelorderClient {
  CancelorderClient(this.baseUrl);

  final String baseUrl;

  Future<OrderSuccess> cancelorderPut({
    required String xAPIKEY,
    required RequestCancelOrder body,
  }) async {
    final response = await http.put(
      Uri.parse('$baseUrl/cancelorder'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body.toJson()),
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return OrderSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
