import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class SymbolnameClient {
  SymbolnameClient(this.baseUrl);

  final String baseUrl;

  Future<SymbolNameSuccess> symbolnameFutureGet({
    required String xAPIKEY,
    String futureCode,
    required int derivMonth,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/symbolname/future'),
      queryParameters: {
        'FutureCode': futureCode.toString(),
        'DerivMonth': derivMonth.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return SymbolNameSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<SymbolNameSuccess> symbolnameOptionGet({
    required String xAPIKEY,
    String optionCode,
    required int derivMonth,
    required String putOrCall,
    required int strikePrice,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/symbolname/option'),
      queryParameters: {
        'OptionCode': optionCode.toString(),
        'DerivMonth': derivMonth.toString(),
        'PutOrCall': putOrCall.toString(),
        'StrikePrice': strikePrice.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return SymbolNameSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<SymbolNameSuccess> symbolnameOptionMiniGet({
    required String xAPIKEY,
    required int derivMonth,
    required int derivWeekly,
    required String putOrCall,
    required int strikePrice,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/symbolname/minioptionweekly'),
      queryParameters: {
        'DerivMonth': derivMonth.toString(),
        'DerivWeekly': derivWeekly.toString(),
        'PutOrCall': putOrCall.toString(),
        'StrikePrice': strikePrice.toString(),
      },
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return SymbolNameSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
