import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SymbolClient {
  SymbolClient(this.baseUrl);

  final String baseUrl;

  Future<SymbolSuccess> symbolGet({
    required String xAPIKEY,
    required String symbol,
    String addinfo,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/symbol/{symbol}'
          .toString()
          .replaceAll('{symbol}', symbol.toString())),
      queryParameters: {
        'addinfo': addinfo.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return SymbolSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
