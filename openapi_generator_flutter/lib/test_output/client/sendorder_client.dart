import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SendorderClient {
  SendorderClient(this.baseUrl);

  final String baseUrl;

  Future<OrderSuccess> sendorderPost({
    required String xAPIKEY,
    required RequestSendOrder body,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sendorder'),
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

  Future<OrderSuccess> sendoderFuturePost({
    required String xAPIKEY,
    required RequestSendOrderDerivFuture body,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sendorder/future'),
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

  Future<OrderSuccess> sendorderOptionPost({
    required String xAPIKEY,
    required RequestSendOrderDerivOption body,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sendorder/option'),
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
