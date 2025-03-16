import 'package:http/http.dart' as http;
import 'dart:convert';
import '../index.dart';

class WalletClient {
  WalletClient(this.baseUrl);

  final String baseUrl;

  Future<WalletCashSuccess> walletCashGet({required String xAPIKEY}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/wallet/cash'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return WalletCashSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<WalletCashSuccess> defaultOperationId({
    required String xAPIKEY,
    required String symbol,
  }) async {
    final response = await http.get(
      Uri.parse('$baseUrl/wallet/cash/{symbol}'
          .toString()
          .replaceAll('{symbol}', symbol.toString())),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return WalletCashSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<WalletMarginSuccess> walletMarginGet({required String xAPIKEY}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/wallet/margin'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return WalletMarginSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<WalletFutureSuccess> walletFutureGet({required String xAPIKEY}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/wallet/future'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return WalletFutureSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  Future<WalletOptionSuccess> walletOptionGet({required String xAPIKEY}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/wallet/option'),
      headers: {
        'X-API-KEY': xAPIKEY.toString(),
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return WalletOptionSuccess.fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}
