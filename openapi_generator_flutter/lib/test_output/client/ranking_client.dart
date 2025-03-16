import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class RankingClient {
  RankingClient(this.baseUrl);

  final String baseUrl;

  Future<void> rankingGet({
    required String xAPIKEY,
    required String type,
    required String exchangeDivision,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/ranking'),
      queryParameters: {
        'Type': type.toString(),
        'ExchangeDivision': exchangeDivision.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      return;
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
