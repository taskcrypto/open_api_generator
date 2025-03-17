// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'retrofit/index.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://api.kabu.com.net/kabusapi')
abstract class Client {
  factory Client(
    Dio dio, {
    String? baseUrl,
  }) = _Client;

  @GET('/apisoftlimit')
  Future<HttpResponse<ApiSoftLimit>> getApiSoftLimit();
}
