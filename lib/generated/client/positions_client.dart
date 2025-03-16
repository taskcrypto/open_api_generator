import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class PositionsClient {
  PositionsClient(this.baseUrl);

  final String baseUrl;

  Future<List<PositionsSuccess>> getPositions({
    required String xAPIKEY,
    String? product,
    String? symbol,
    String? side,
    String? addinfo,
  }) async {
    final queryParams = <String, dynamic>{
      if (product != null) 'product': product,
      if (symbol != null) 'symbol': symbol,
      if (side != null) 'side': side,
      if (addinfo != null) 'addinfo': addinfo,
    };

    final uri = Uri.parse('${baseUrl}/positions').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as List<dynamic>;
    return json
        .map((e) => PositionsSuccess.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
