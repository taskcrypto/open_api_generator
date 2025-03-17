// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'register_client.g.dart';

@RestApi()
abstract class RegisterClient {
  factory RegisterClient(Dio dio, {String? baseUrl}) = _RegisterClient;

  @PUT('/register') Future<HttpResponse<RegistSuccess>> putRegister({@Header('X-API-KEY') required String xapikey, @Body() required RequestRegister body, }) {  } 

}
