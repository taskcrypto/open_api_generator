// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models_index.dart';

part 'register_client.g.dart';

@RestApi()
abstract class RegisterClient {
  factory RegisterClient(Dio dio, {String? baseUrl}) = _RegisterClient;

  @PUT('/register')
  Future<HttpResponse<RegistSuccess>> putRegister({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestRegister body
  });

  @PUT('/unregister')
  Future<HttpResponse<RegistSuccess>> putUnregister({
    @Header('X-API-KEY') required String xaPIkEY,
    @Body() required RequestUnregister body
  });

  @PUT('/unregister/all')
  Future<HttpResponse<UnregisterAllSuccess>> putUnregisterAll({
    @Header('X-API-KEY') required String xaPIkEY
  });

}
