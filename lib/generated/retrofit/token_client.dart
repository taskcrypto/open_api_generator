// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'token_client.g.dart';

@RestApi()
abstract class TokenClient {
  factory TokenClient(Dio dio, {String? baseUrl}) = _TokenClient;

  @POST('/token') Future<HttpResponse<TokenSuccess>> postToken({@Body() required RequestToken body}) {  } 

}
