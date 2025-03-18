// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'wallet_client.g.dart';

@RestApi()
abstract class WalletClient {
  factory WalletClient(Dio dio, {String? baseUrl}) = _WalletClient;

  @GET('/wallet/cash')
  Future<HttpResponse<WalletCashSuccess>> getWalletCash({
    @Header('X-API-KEY') required String xapikey
  });

  @GET('/wallet/cash/{symbol}')
  Future<HttpResponse<WalletCashSuccess>> getWalletCashBySymbol({
    @Header('X-API-KEY') required String xapikey,
    @Path('symbol') required String symbol
  });

  @GET('/wallet/margin')
  Future<HttpResponse<WalletMarginSuccess>> getWalletMargin({
    @Header('X-API-KEY') required String xapikey
  });

  @GET('/wallet/margin/{symbol}')
  Future<HttpResponse<WalletMarginSuccess>> getWalletMarginBySymbol({
    @Header('X-API-KEY') required String xapikey,
    @Path('symbol') required String symbol
  });

  @GET('/wallet/future')
  Future<HttpResponse<WalletFutureSuccess>> getWalletFuture({
    @Header('X-API-KEY') required String xapikey
  });

  @GET('/wallet/future/{symbol}')
  Future<HttpResponse<WalletFutureSuccess>> getWalletFutureBySymbol({
    @Header('X-API-KEY') required String xapikey,
    @Path('symbol') required String symbol
  });

  @GET('/wallet/option')
  Future<HttpResponse<WalletOptionSuccess>> getWalletOption({
    @Header('X-API-KEY') required String xapikey
  });

  @GET('/wallet/option/{symbol}')
  Future<HttpResponse<WalletOptionSuccess>> getWalletOptionBySymbol({
    @Header('X-API-KEY') required String xapikey,
    @Path('symbol') required String symbol
  });

}
