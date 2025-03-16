import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SymbolnameClient {
  SymbolnameClient(this.baseUrl);

  final String baseUrl;

  Future<SymbolNameSuccess> getSymbolnameFuture({
    required String xAPIKEY,
    String? futureCode,
    required int derivMonth,
  }) async {
    final queryParams = <String, dynamic>{
      if (futureCode != null) 'futureCode': futureCode,
      'derivMonth': derivMonth,
    };

    final uri = Uri.parse('${baseUrl}/symbolname/future').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return SymbolNameSuccess.fromJson(json);
  }

  Future<SymbolNameSuccess> getSymbolnameOption({
    required String xAPIKEY,
    String? optionCode,
    required int derivMonth,
    required String putOrCall,
    required int strikePrice,
  }) async {
    final queryParams = <String, dynamic>{
      if (optionCode != null) 'optionCode': optionCode,
      'derivMonth': derivMonth,
      'putOrCall': putOrCall,
      'strikePrice': strikePrice,
    };

    final uri = Uri.parse('${baseUrl}/symbolname/option').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return SymbolNameSuccess.fromJson(json);
  }

  Future<SymbolNameSuccess> getSymbolnameMinioptionweekly({
    required String xAPIKEY,
    required int derivMonth,
    required int derivWeekly,
    required String putOrCall,
    required int strikePrice,
  }) async {
    final queryParams = <String, dynamic>{
      'derivMonth': derivMonth,
      'derivWeekly': derivWeekly,
      'putOrCall': putOrCall,
      'strikePrice': strikePrice,
    };

    final uri = Uri.parse('${baseUrl}/symbolname/minioptionweekly').replace(
        queryParameters:
            queryParams.map((key, value) => MapEntry(key, value.toString())));

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return SymbolNameSuccess.fromJson(json);
  }
}
