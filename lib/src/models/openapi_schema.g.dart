// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApiSchema _$OpenApiSchemaFromJson(Map<String, dynamic> json) =>
    OpenApiSchema(
      type: json['type'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, OpenApiSchema.fromJson(e as Map<String, dynamic>)),
      ),
      items: json['items'] == null
          ? null
          : OpenApiSchema.fromJson(json['items'] as Map<String, dynamic>),
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$OpenApiSchemaToJson(OpenApiSchema instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'properties': instance.properties,
      'items': instance.items,
      'required': instance.required,
      'enum': instance.enum_,
    };
