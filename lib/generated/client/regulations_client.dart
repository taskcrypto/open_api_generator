import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class RegulationsClient {
  RegulationsClient(this.baseUrl);

  final String baseUrl;

  Future<RegulationsResponse> getRegulationsSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/regulations/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RegulationsResponse.fromJson(json);
  }
}
