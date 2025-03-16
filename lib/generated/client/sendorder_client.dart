import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SendorderClient {
  SendorderClient(this.baseUrl);

  final String baseUrl;

  Future<OrderSuccess> postSendorder({
    required String xAPIKEY,
    required RequestSendOrder body,
  }) async {
    final uri = Uri.parse('${baseUrl}/sendorder');

    final response = await http.post(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OrderSuccess.fromJson(json);
  }

  Future<OrderSuccess> postSendorderFuture({
    required String xAPIKEY,
    required RequestSendOrderDerivFuture body,
  }) async {
    final uri = Uri.parse('${baseUrl}/sendorder/future');

    final response = await http.post(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OrderSuccess.fromJson(json);
  }

  Future<OrderSuccess> postSendorderOption({
    required String xAPIKEY,
    required RequestSendOrderDerivOption body,
  }) async {
    final uri = Uri.parse('${baseUrl}/sendorder/option');

    final response = await http.post(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OrderSuccess.fromJson(json);
  }
}
