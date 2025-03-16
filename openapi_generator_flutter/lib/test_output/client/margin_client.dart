import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class MarginClient {
  MarginClient(this.baseUrl);

  final String baseUrl;

  Future<MarginPremiumResponse> marginpremiumGet({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/margin/marginpremium/{symbol}'
          .toString()
          .replaceAll('{symbol}', symbol.toString())),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return MarginPremiumResponse.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
