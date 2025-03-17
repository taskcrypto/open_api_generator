// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'margin_client.g.dart';

@RestApi()
abstract class MarginClient {
  factory MarginClient(Dio dio, {String? baseUrl}) = _MarginClient;

  @GET('/margin/marginpremium/{symbol}') Future<HttpResponse<MarginPremiumResponse>> marginpremiumGet({@Header('X-API-KEY') required String xapikey, @Path('symbol') required String symbol, });

}
