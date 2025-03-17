import 'dart:io';

import '../models/openapi_spec.dart';

class ClientGenerator {
  final OpenApiSpec spec;
  final String outputPath;
  final String basePath;

  ClientGenerator(this.spec, this.outputPath, {this.basePath = ''});

  Future<void> generate() async {
    final buffer = StringBuffer();
    buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
    buffer.writeln();
    buffer.writeln("import 'package:dio/dio.dart';");
    buffer.writeln("import 'package:retrofit/retrofit.dart';");
    buffer.writeln("import 'retrofit/index.dart';");
    buffer.writeln();
    buffer.writeln('part \'client.g.dart\';');
    buffer.writeln();
    buffer.writeln('@RestApi(baseUrl: \'$basePath\')');
    buffer.writeln('abstract class Client {');
    buffer.writeln('  factory Client(');
    buffer.writeln('    Dio dio, {');
    buffer.writeln('    String? baseUrl,');
    buffer.writeln('  }) = _Client;');
    buffer.writeln();
    buffer.writeln('  @GET(\'/apisoftlimit\')');
    buffer.writeln('  Future<HttpResponse<ApiSoftLimit>> getApiSoftLimit();');
    buffer.writeln('}');

    final file = File('$outputPath/client.dart');
    await file.writeAsString(buffer.toString());
  }
}
