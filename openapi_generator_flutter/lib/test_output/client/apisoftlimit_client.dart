import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class ApisoftlimitClient {
  ApisoftlimitClient(this.baseUrl);

  final String baseUrl;

  Future<ApiSoftLimitResponse> apisoftlimitGet(
      {required String xAPIKEY}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/apisoftlimit'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return ApiSoftLimitResponse.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
