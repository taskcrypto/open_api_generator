import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class ApisoftlimitClient {
  ApisoftlimitClient(this.baseUrl);

  final String baseUrl;

  Future<ApiSoftLimitResponse> getApisoftlimit(
      {required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/apisoftlimit');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ApiSoftLimitResponse.fromJson(json);
  }
}
