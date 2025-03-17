// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/index.dart';
part 'apisoftlimit_client.g.dart';

@RestApi()
abstract class ApisoftlimitClient {
  factory ApisoftlimitClient(Dio dio, {String? baseUrl}) = _ApisoftlimitClient;

  @GET('/apisoftlimit') Future<HttpResponse<ApiSoftLimitResponse>> apisoftlimitGet({@Header('X-API-KEY') required String xapikey});

}
