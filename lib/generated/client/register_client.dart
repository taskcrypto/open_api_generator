import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class RegisterClient {
  RegisterClient(this.baseUrl);

  final String baseUrl;

  Future<RegistSuccess> putRegister({
    required String xAPIKEY,
    required RequestRegister body,
  }) async {
    final uri = Uri.parse('${baseUrl}/register');

    final response = await http.put(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RegistSuccess.fromJson(json);
  }
}
