import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class WalletClient {
  WalletClient(this.baseUrl);

  final String baseUrl;

  Future<WalletCashSuccess> getWalletCash({required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/wallet/cash');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WalletCashSuccess.fromJson(json);
  }

  Future<WalletCashSuccess> getWalletCashSymbol({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final uri = Uri.parse('${baseUrl}/wallet/cash/$symbol');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WalletCashSuccess.fromJson(json);
  }

  Future<WalletMarginSuccess> getWalletMargin({required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/wallet/margin');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WalletMarginSuccess.fromJson(json);
  }

  Future<WalletFutureSuccess> getWalletFuture({required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/wallet/future');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WalletFutureSuccess.fromJson(json);
  }

  Future<WalletOptionSuccess> getWalletOption({required String xAPIKEY}) async {
    final uri = Uri.parse('${baseUrl}/wallet/option');

    final response = await http.get(uri, headers: {
      'X-API-KEY': xAPIKEY,
    });

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return WalletOptionSuccess.fromJson(json);
  }
}
