// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'positions_client.g.dart';

@RestApi()
abstract class PositionsClient {
  factory PositionsClient(Dio dio, {String? baseUrl}) = _PositionsClient;

  @GET('/positions') Future<HttpResponse<List<PositionsSuccess>>> getPositions({@Header('X-API-KEY') required String xapikey, @Query('product') required String product, @Query('symbol') required String symbol, @Query('side') required String side, @Query('addinfo') required String addinfo, });

}
