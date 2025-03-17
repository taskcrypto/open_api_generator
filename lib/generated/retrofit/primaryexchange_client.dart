// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'primaryexchange_client.g.dart';

@RestApi()
abstract class PrimaryexchangeClient {
  factory PrimaryexchangeClient(Dio dio, {String? baseUrl}) = _PrimaryexchangeClient;

  @GET('/primaryexchange/{symbol}') Future<HttpResponse<PrimaryExchangeResponse>> getPrimaryexchangeBySymbol({@Header('X-API-KEY') required String xapikey, @Path('symbol') required String symbol, });

}
