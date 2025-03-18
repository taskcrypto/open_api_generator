// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models_index.dart';

part 'order_client.g.dart';

@RestApi()
abstract class OrderClient {
  factory OrderClient(Dio dio, {String? baseUrl}) = _OrderClient;

  @POST('/sendorder')
  Future<HttpResponse<OrderSuccess>> postSendorder({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestSendOrder body
  });

  @POST('/sendorder/future')
  Future<HttpResponse<OrderSuccess>> postSendorderFuture({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestSendOrderDerivFuture body
  });

  @POST('/sendorder/option')
  Future<HttpResponse<OrderSuccess>> postSendorderOption({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestSendOrderDerivOption body
  });

  @PUT('/cancelorder')
  Future<HttpResponse<OrderSuccess>> putCancelorder({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestCancelOrder body
  });

}
