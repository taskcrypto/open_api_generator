// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApiSpec _$OpenApiSpecFromJson(Map<String, dynamic> json) => OpenApiSpec(
      openapi: json['openapi'] as String,
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      paths: (json['paths'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ),
      components: json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenApiSpecToJson(OpenApiSpec instance) =>
    <String, dynamic>{
      'openapi': instance.openapi,
      'info': instance.info.toJson(),
      'paths': instance.paths.map((k, e) => MapEntry(k, e.toJson())),
      'components': instance.components?.toJson(),
      'tags': instance.tags?.map((e) => e.toJson()).toList(),
    };

Components _$ComponentsFromJson(Map<String, dynamic> json) => Components(
      schemas: (json['schemas'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ComponentsToJson(Components instance) =>
    <String, dynamic>{
      'schemas': instance.schemas?.map((k, e) => MapEntry(k, e.toJson())),
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      title: json['title'] as String,
      version: json['version'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'title': instance.title,
      'version': instance.version,
      'description': instance.description,
    };

PathItem _$PathItemFromJson(Map<String, dynamic> json) => PathItem(
      get: json['get'] == null
          ? null
          : Operation.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Operation.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : Operation.fromJson(json['put'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Operation.fromJson(json['delete'] as Map<String, dynamic>),
      patch: json['patch'] == null
          ? null
          : Operation.fromJson(json['patch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PathItemToJson(PathItem instance) => <String, dynamic>{
      'get': instance.get?.toJson(),
      'post': instance.post?.toJson(),
      'put': instance.put?.toJson(),
      'delete': instance.delete?.toJson(),
      'patch': instance.patch?.toJson(),
    };

Operation _$OperationFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['operationId', 'responses'],
  );
  return Operation(
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    summary: json['summary'] as String?,
    description: json['description'] as String?,
    operationId: json['operationId'] as String,
    parameters: (json['parameters'] as List<dynamic>?)
        ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList(),
    requestBody: json['requestBody'] == null
        ? null
        : RequestBody.fromJson(json['requestBody'] as Map<String, dynamic>),
    responses: (json['responses'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$OperationToJson(Operation instance) => <String, dynamic>{
      'tags': instance.tags,
      'summary': instance.summary,
      'description': instance.description,
      'operationId': instance.operationId,
      'parameters': instance.parameters?.map((e) => e.toJson()).toList(),
      'requestBody': instance.requestBody?.toJson(),
      'responses': instance.responses.map((k, e) => MapEntry(k, e.toJson())),
    };

Parameter _$ParameterFromJson(Map<String, dynamic> json) => Parameter(
      name: json['name'] as String,
      in_: json['in'] as String?,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      schema: Schema.fromJson(json['schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParameterToJson(Parameter instance) => <String, dynamic>{
      'name': instance.name,
      'in': instance.in_,
      'description': instance.description,
      'required': instance.required,
      'schema': instance.schema.toJson(),
    };

RequestBody _$RequestBodyFromJson(Map<String, dynamic> json) => RequestBody(
      description: json['description'] as String?,
      content: (json['content'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ),
      required: json['required'] as bool? ?? false,
    );

Map<String, dynamic> _$RequestBodyToJson(RequestBody instance) =>
    <String, dynamic>{
      'description': instance.description,
      'content': instance.content.map((k, e) => MapEntry(k, e.toJson())),
      'required': instance.required,
    };

MediaType _$MediaTypeFromJson(Map<String, dynamic> json) => MediaType(
      schema: Schema.fromJson(json['schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaTypeToJson(MediaType instance) => <String, dynamic>{
      'schema': instance.schema.toJson(),
    };

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      description: json['description'] as String,
      content: (json['content'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'description': instance.description,
      'content': instance.content?.map((k, e) => MapEntry(k, e.toJson())),
    };

Schema _$SchemaFromJson(Map<String, dynamic> json) => Schema(
      type: json['type'] as String?,
      format: json['format'] as String?,
      description: json['description'] as String?,
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      items: json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
      ref: json[r'$ref'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
      ),
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      example: json['example'],
      default_: json['default'],
      nullable: json['nullable'] as bool?,
    );

Map<String, dynamic> _$SchemaToJson(Schema instance) => <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
      'description': instance.description,
      'enum': instance.enum_,
      'items': instance.items?.toJson(),
      r'$ref': instance.ref,
      'properties': instance.properties?.map((k, e) => MapEntry(k, e.toJson())),
      'required': instance.required,
      'example': instance.example,
      'default': instance.default_,
      'nullable': instance.nullable,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      name: json['name'] as String,
      description: json['description'] as String?,
      displayName: json['x-displayName'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'x-displayName': instance.displayName,
    };
