import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class BoardClient {
  BoardClient(this.baseUrl);

  final String baseUrl;

  Future<BoardSuccess> boardGet({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/board/{symbol}'
          .toString()
          .replaceAll('{symbol}', symbol.toString())),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return BoardSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
