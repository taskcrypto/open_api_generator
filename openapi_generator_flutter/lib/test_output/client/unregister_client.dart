import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class UnregisterClient {
  UnregisterClient(this.baseUrl);

  final String baseUrl;

  Future<RegistSuccess> unregisterPut({
    required String xAPIKEY,
    required RequestUnregister body,
  }) async {
    final response = await http.put(
      Uri.parse('$baseUrl/unregister'),
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

  Future<UnregisterAllSuccess> unregisterAllPut(
      {required String xAPIKEY}) async {
    final response = await http.put(
      Uri.parse('$baseUrl/unregister/all'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return UnregisterAllSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
