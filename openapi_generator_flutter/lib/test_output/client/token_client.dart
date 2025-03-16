import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class TokenClient {
  TokenClient(this.baseUrl);

  final String baseUrl;

  Future<TokenSuccess> tokenPost({required RequestToken body}) async {
    final response = await http.post(
      Uri.parse('$baseUrl/token'),
      body: jsonEncode(body.toJson()),
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return TokenSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
