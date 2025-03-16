import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class RegisterClient {
  RegisterClient(this.baseUrl);

  final String baseUrl;

  Future<RegistSuccess> registerPut({
    required String xAPIKEY,
    required RequestRegister body,
  }) async {
    final response = await http.put(
      Uri.parse('$baseUrl/register'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body.toJson()),
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return RegistSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
