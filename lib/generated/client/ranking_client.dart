import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class RankingClient {
  RankingClient(this.baseUrl);

  final String baseUrl;

  Future<void> getRanking({
    required String xAPIKEY,
    required String type,
    required String exchangeDivision,
  }) async {
    final queryParams = <String, dynamic>{
      'type': type,
      'exchangeDivision': exchangeDivision,
    };

    final uri = Uri.parse('${baseUrl}/ranking').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    return;
  }
}
