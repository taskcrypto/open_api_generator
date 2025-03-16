import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SymbolClient {
  SymbolClient(this.baseUrl);

  final String baseUrl;

  Future<SymbolSuccess> getSymbolSymbol({
    required String xAPIKEY,
    required String symbol,
    String? addinfo,
  }) async {
    final queryParams = <String, dynamic>{
      if (addinfo != null) 'addinfo': addinfo,
    };

    final uri = Uri.parse('${baseUrl}/symbol/$symbol').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return SymbolSuccess.fromJson(json);
  }
}
