import 'package:freezed_annotation/freezed_annotation.dart';

part 'openapi_schema.freezed.dart';
part 'openapi_schema.g.dart';

@freezed
class OpenApiSchema with _$OpenApiSchema {
  const factory OpenApiSchema({
    String? type,
    String? title,
    Map<String, OpenApiSchema>? properties,
    OpenApiSchema? items,
    List<String>? required,
    List<String>? enum_,
  }) = _OpenApiSchema;

  factory OpenApiSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaFromJson(json);
}
