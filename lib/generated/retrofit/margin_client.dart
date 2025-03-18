// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'margin_client.g.dart';

@RestApi()
abstract class MarginClient {
  factory MarginClient(Dio dio, {String? baseUrl}) = _MarginClient;

  @GET('/margin/marginpremium/{symbol}')
  Future<HttpResponse<MarginPremiumResponse>> getMarginMarginpremiumBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

}
