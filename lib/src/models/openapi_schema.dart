import 'package:json_annotation/json_annotation.dart';

part 'openapi_schema.g.dart';

@JsonSerializable()
class OpenApiSchema {
  final String? type;
  final String? title;
  final String? description;
  final Map<String, OpenApiSchema>? properties;
  final OpenApiSchema? items;
  final List<String>? required;
  @JsonKey(name: 'enum')
  final List<String>? enum_;

  const OpenApiSchema({
    this.type,
    this.title,
    this.description,
    this.properties,
    this.items,
    this.required,
    this.enum_,
  });

  factory OpenApiSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$OpenApiSchemaToJson(this);
}
