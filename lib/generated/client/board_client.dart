import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class BoardClient {
  BoardClient(this.baseUrl);

  final String baseUrl;

  Future<BoardSuccess> getBoardSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/board/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return BoardSuccess.fromJson(json);
  }
}
