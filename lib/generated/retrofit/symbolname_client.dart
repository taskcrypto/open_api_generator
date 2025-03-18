// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'symbolname_client.g.dart';

@RestApi()
abstract class SymbolnameClient {
  factory SymbolnameClient(Dio dio, {String? baseUrl}) = _SymbolnameClient;

  @GET('/symbolname/future')
  Future<HttpResponse<SymbolNameSuccess>> getSymbolnameFuture({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('FutureCode') required String FutureCode,
    @Query('DerivMonth') required String DerivMonth
  });

  @GET('/symbolname/option')
  Future<HttpResponse<SymbolNameSuccess>> getSymbolnameOption({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('OptionCode') required String OptionCode,
    @Query('DerivMonth') required String DerivMonth,
    @Query('PutOrCall') required String PutOrCall,
    @Query('StrikePrice') required String StrikePrice
  });

  @GET('/symbolname/minioptionweekly')
  Future<HttpResponse<SymbolNameSuccess>> getSymbolnameMinioptionweekly({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('DerivMonth') required String DerivMonth,
    @Query('DerivWeekly') required String DerivWeekly,
    @Query('PutOrCall') required String PutOrCall,
    @Query('StrikePrice') required String StrikePrice
  });

}
