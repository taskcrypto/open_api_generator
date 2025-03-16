import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class CancelorderClient {
  CancelorderClient(this.baseUrl);

  final String baseUrl;

  Future<OrderSuccess> putCancelorder({
    required String xAPIKEY,
    required RequestCancelOrder body,
  }) async {
    final uri = Uri.parse('${baseUrl}/cancelorder');

    final response = await http.put(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OrderSuccess.fromJson(json);
  }
}
