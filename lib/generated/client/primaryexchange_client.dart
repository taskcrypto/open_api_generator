import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class PrimaryexchangeClient {
  PrimaryexchangeClient(this.baseUrl);

  final String baseUrl;

  Future<PrimaryExchangeResponse> getPrimaryexchangeSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/primaryexchange/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return PrimaryExchangeResponse.fromJson(json);
  }
}
