// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'board_client.g.dart';

@RestApi()
abstract class BoardClient {
  factory BoardClient(Dio dio, {String? baseUrl}) = _BoardClient;

  @GET('/board/{symbol}')
  Future<HttpResponse<BoardSuccess>> getBoardBySymbol({
    @Header('X-API-KEY') required String xapikey,
    @Path('symbol') required String symbol
  });

}
