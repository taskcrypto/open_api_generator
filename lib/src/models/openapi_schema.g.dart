// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiSchemaImpl _$$OpenApiSchemaImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiSchemaImpl(
      type: json['type'] as String?,
      title: json['title'] as String?,
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
      enum_:
          (json['enum_'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OpenApiSchemaImplToJson(_$OpenApiSchemaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'properties': instance.properties,
      'items': instance.items,
      'required': instance.required,
      'enum_': instance.enum_,
    };
