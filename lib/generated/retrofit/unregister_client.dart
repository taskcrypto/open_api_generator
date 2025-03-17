// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'unregister_client.g.dart';

@RestApi()
abstract class UnregisterClient {
  factory UnregisterClient(Dio dio, {String? baseUrl}) = _UnregisterClient;

  @PUT('/unregister') Future<HttpResponse<RegistSuccess>> putUnregister({@Header('X-API-KEY') required String xapikey, @Body() required RequestUnregister body, }) {  } 

  @PUT('/unregister/all') Future<HttpResponse<UnregisterAllSuccess>> putUnregisterAll({@Header('X-API-KEY') required String xapikey}) {  } 

}
