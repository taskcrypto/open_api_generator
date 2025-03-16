import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class PositionsClient {
  PositionsClient(this.baseUrl);

  final String baseUrl;

  Future<List<PositionsSuccess>> positionsGet({
    required String xAPIKEY,
    String product,
    String symbol,
    String side,
    String addinfo,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/positions'),
      queryParameters: {
        'product': product.toString(),
        'symbol': symbol.toString(),
        'side': side.toString(),
        'addinfo': addinfo.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return List<PositionsSuccess>.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
