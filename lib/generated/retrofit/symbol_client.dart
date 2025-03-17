// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'symbol_client.g.dart';

@RestApi()
abstract class SymbolClient {
  factory SymbolClient(Dio dio, {String? baseUrl}) = _SymbolClient;

  @GET('/symbol/{symbol}') Future<HttpResponse<SymbolSuccess>> symbolGet({@Header('X-API-KEY') required String xapikey, @Path('symbol') required String symbol, @Query('addinfo') required String addinfo, });

}
