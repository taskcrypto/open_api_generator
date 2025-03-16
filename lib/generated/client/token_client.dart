import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class TokenClient {
  TokenClient(this.baseUrl);

  final String baseUrl;

  Future<TokenSuccess> postToken({required RequestToken body}) async {
    final uri = Uri.parse('${baseUrl}/token');

    final response = await http.post(uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return TokenSuccess.fromJson(json);
  }
}
