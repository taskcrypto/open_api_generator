import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class UnregisterClient {
  UnregisterClient(this.baseUrl);

  final String baseUrl;

  Future<RegistSuccess> putUnregister({
    required String xAPIKEY,
    required RequestUnregister body,
  }) async {
    final uri = Uri.parse('${baseUrl}/unregister');

    final response = await http.put(uri,
        headers: {
          'Content-Type': 'application/json',
          'X-API-KEY': xAPIKEY,
        },
        body: jsonEncode(body.toJson()));

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RegistSuccess.fromJson(json);
  }

  Future<UnregisterAllSuccess> putUnregisterAll(
      {required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/unregister/all');

    final response = await http.put(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return UnregisterAllSuccess.fromJson(json);
  }
}
