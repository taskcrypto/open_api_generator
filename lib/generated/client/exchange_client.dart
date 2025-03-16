import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class ExchangeClient {
  ExchangeClient(this.baseUrl);

  final String baseUrl;

  Future<ExchangeResponse> getExchangeSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/exchange/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ExchangeResponse.fromJson(json);
  }
}
