// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'sendorder_client.g.dart';

@RestApi()
abstract class SendorderClient {
  factory SendorderClient(Dio dio, {String? baseUrl}) = _SendorderClient;

  @POST('/sendorder') Future<HttpResponse<OrderSuccess>> sendorderPost({@Header('X-API-KEY') required String xapikey, @Body() required RequestSendOrder body, });

  @POST('/sendorder/future') Future<HttpResponse<OrderSuccess>> sendoderFuturePost({@Header('X-API-KEY') required String xapikey, @Body() required RequestSendOrderDerivFuture body, });

  @POST('/sendorder/option') Future<HttpResponse<OrderSuccess>> sendorderOptionPost({@Header('X-API-KEY') required String xapikey, @Body() required RequestSendOrderDerivOption body, });

}
