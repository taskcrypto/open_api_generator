// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'exchange_client.g.dart';

@RestApi()
abstract class ExchangeClient {
  factory ExchangeClient(Dio dio, {String? baseUrl}) = _ExchangeClient;

  @GET('/exchange/{symbol}') Future<HttpResponse<ExchangeResponse>> exchangeGet({@Header('X-API-KEY') required String xapikey, @Path('symbol') required String symbol, });

}
