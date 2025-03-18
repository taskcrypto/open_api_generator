// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'ranking_client.g.dart';

@RestApi()
abstract class RankingClient {
  factory RankingClient(Dio dio, {String? baseUrl}) = _RankingClient;

  @GET('/ranking')
  Future<HttpResponse<void>> getRanking({
    @Header('X-API-KEY') required String xapikey,
    @Query('Type') required String Type,
    @Query('ExchangeDivision') required String ExchangeDivision
  });

}
