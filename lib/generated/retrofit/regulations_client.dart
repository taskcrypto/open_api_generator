// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'regulations_client.g.dart';

@RestApi()
abstract class RegulationsClient {
  factory RegulationsClient(Dio dio, {String? baseUrl}) = _RegulationsClient;

  @GET('/regulations/{symbol}')
  Future<HttpResponse<RegulationsResponse>> getRegulationsBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

}
