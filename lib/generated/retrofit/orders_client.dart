// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'orders_client.g.dart';

@RestApi()
abstract class OrdersClient {
  factory OrdersClient(Dio dio, {String? baseUrl}) = _OrdersClient;

  @GET('/orders') Future<HttpResponse<List<OrdersSuccess>>> ordersGet({@Header('X-API-KEY') required String xapikey, @Query('product') required String product, @Query('id') required String id, @Query('updtime') required String updtime, @Query('details') required String details, @Query('symbol') required String symbol, @Query('state') required String state, @Query('side') required String side, @Query('cashmargin') required String cashmargin, });

}
