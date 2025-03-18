// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models_index.dart';

part 'cancelorder_client.g.dart';

@RestApi()
abstract class CancelorderClient {
  factory CancelorderClient(Dio dio, {String? baseUrl}) = _CancelorderClient;

  @PUT('/cancelorder')
  Future<HttpResponse<OrderSuccess>> putCancelorder({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestCancelOrder body
  });

}
