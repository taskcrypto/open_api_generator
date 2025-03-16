import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class MarginClient {
  MarginClient(this.baseUrl);

  final String baseUrl;

  Future<MarginPremiumResponse> getMarginMarginpremiumSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/margin/marginpremium/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return MarginPremiumResponse.fromJson(json);
  }
}
