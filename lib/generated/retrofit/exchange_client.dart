// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'exchange_client.g.dart';

@RestApi()
abstract class ExchangeClient {
  factory ExchangeClient(Dio dio, {String? baseUrl}) = _ExchangeClient;

  @GET('/exchange/{symbol}')
  Future<HttpResponse<ExchangeResponse>> getExchangeBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

}
