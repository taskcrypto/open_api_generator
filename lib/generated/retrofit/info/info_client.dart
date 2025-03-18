// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models_index.dart';

part 'info_client.g.dart';

@RestApi()
abstract class InfoClient {
  factory InfoClient(Dio dio, {String? baseUrl}) = _InfoClient;

  @GET('/board/{symbol}')
  Future<HttpResponse<BoardSuccess>> getBoardBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

  @GET('/symbol/{symbol}')
  Future<HttpResponse<SymbolSuccess>> getSymbolBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol,
    @Query('addinfo') required String addinfo
  });

  @GET('/orders')
  Future<HttpResponse<List<OrdersSuccess>>> getOrders({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('product') required String product,
    @Query('id') required String id,
    @Query('updtime') required String updtime,
    @Query('details') required String details,
    @Query('symbol') required String symbol,
    @Query('state') required String state,
    @Query('side') required String side,
    @Query('cashmargin') required String cashmargin
  });

  @GET('/positions')
  Future<HttpResponse<List<PositionsSuccess>>> getPositions({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('product') required String product,
    @Query('symbol') required String symbol,
    @Query('side') required String side,
    @Query('addinfo') required String addinfo
  });

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

  @GET('/ranking')
  Future<HttpResponse<void>> getRanking({
    @Header('X-API-KEY') required String xaPIkEY,
    @Query('Type') required String Type,
    @Query('ExchangeDivision') required String ExchangeDivision
  });

  @GET('/exchange/{symbol}')
  Future<HttpResponse<ExchangeResponse>> getExchangeBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

  @GET('/regulations/{symbol}')
  Future<HttpResponse<RegulationsResponse>> getRegulationsBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

  @GET('/primaryexchange/{symbol}')
  Future<HttpResponse<PrimaryExchangeResponse>> getPrimaryexchangeBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

  @GET('/apisoftlimit')
  Future<HttpResponse<ApiSoftLimitResponse>> getApisoftlimit({
    @Header('X-API-KEY') required String xaPIkEY
  });

  @GET('/margin/marginpremium/{symbol}')
  Future<HttpResponse<MarginPremiumResponse>> getMarginMarginpremiumBySymbol({
    @Header('X-API-KEY') required String xaPIkEY,
    @Path('symbol') required String symbol
  });

}
