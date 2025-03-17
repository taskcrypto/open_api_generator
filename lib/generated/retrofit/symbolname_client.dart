// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'symbolname_client.g.dart';

@RestApi()
abstract class SymbolnameClient {
  factory SymbolnameClient(Dio dio, {String? baseUrl}) = _SymbolnameClient;

  @GET('/symbolname/future') Future<HttpResponse<SymbolNameSuccess>> symbolnameFutureGet({@Header('X-API-KEY') required String xapikey, @Query('FutureCode') required String FutureCode, @Query('DerivMonth') required String DerivMonth, });

  @GET('/symbolname/option') Future<HttpResponse<SymbolNameSuccess>> symbolnameOptionGet({@Header('X-API-KEY') required String xapikey, @Query('OptionCode') required String OptionCode, @Query('DerivMonth') required String DerivMonth, @Query('PutOrCall') required String PutOrCall, @Query('StrikePrice') required String StrikePrice, });

  @GET('/symbolname/minioptionweekly') Future<HttpResponse<SymbolNameSuccess>> symbolnameOptionMiniGet({@Header('X-API-KEY') required String xapikey, @Query('DerivMonth') required String DerivMonth, @Query('DerivWeekly') required String DerivWeekly, @Query('PutOrCall') required String PutOrCall, @Query('StrikePrice') required String StrikePrice, });

}
