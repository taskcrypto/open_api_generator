import 'package:json_annotation/json_annotation.dart';

part 'openapi_spec.g.dart';

@JsonSerializable(explicitToJson: true)
class OpenApiSpec {
  final String openapi;
  final Info info;
  final Map<String, PathItem> paths;
  @JsonKey(name: 'components')
  final Components? components;

  OpenApiSpec({
    required this.openapi,
    required this.info,
    required this.paths,
    this.components,
  });

  factory OpenApiSpec.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSpecFromJson(json);

  Map<String, dynamic> toJson() => _$OpenApiSpecToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Components {
  @JsonKey(name: 'schemas')
  final Map<String, Schema>? schemas;

  Components({this.schemas});

  factory Components.fromJson(Map<String, dynamic> json) =>
      _$ComponentsFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Info {
  final String title;
  final String version;
  final String? description;

  Info({
    required this.title,
    required this.version,
    this.description,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PathItem {
  final Operation? get;
  final Operation? post;
  final Operation? put;
  final Operation? delete;
  final Operation? patch;

  PathItem({
    this.get,
    this.post,
    this.put,
    this.delete,
    this.patch,
  });

  factory PathItem.fromJson(Map<String, dynamic> json) =>
      _$PathItemFromJson(json);
  Map<String, dynamic> toJson() => _$PathItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Operation {
  final List<String>? tags;
  final String? summary;
  final String? description;
  @JsonKey(required: true)
  final String operationId;
  final List<Parameter>? parameters;
  final RequestBody? requestBody;
  @JsonKey(required: true)
  final Map<String, Response> responses;

  Operation({
    this.tags,
    this.summary,
    this.description,
    required this.operationId,
    this.parameters,
    this.requestBody,
    required this.responses,
  });

  factory Operation.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('operationId')) {
      json['operationId'] = 'defaultOperationId';
    }
    if (!json.containsKey('responses')) {
      json['responses'] = <String, dynamic>{};
    }
    return _$OperationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Parameter {
  final String name;
  @JsonKey(name: 'in')
  final String? in_;
  final String? description;
  @JsonKey(defaultValue: false)
  final bool required;
  final Schema schema;
  @JsonKey(ignore: true)
  final String? originalName;

  Parameter({
    required this.name,
    @JsonKey(name: 'in') this.in_,
    this.description,
    required this.required,
    required this.schema,
    this.originalName,
  });

  factory Parameter.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('required')) {
      json['required'] = false;
    }
    final param = _$ParameterFromJson(json);
    return Parameter(
      name: param.name,
      in_: param.in_,
      description: param.description,
      required: param.required,
      schema: param.schema,
      originalName: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() => _$ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestBody {
  final String? description;
  final Map<String, MediaType> content;
  @JsonKey(defaultValue: false)
  final bool required;

  RequestBody({
    this.description,
    required this.content,
    required this.required,
  });

  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RequestBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MediaType {
  final Schema schema;

  MediaType({required this.schema});

  factory MediaType.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeFromJson(json);
  Map<String, dynamic> toJson() => _$MediaTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Response {
  final String description;
  final Map<String, MediaType>? content;

  Response({
    required this.description,
    this.content,
  });

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Schema {
  final String? type;
  final String? format;
  final String? description;
  final List<String>? enum_;
  final Schema? items;
  final String? ref;
  final Map<String, Schema>? properties;
  final List<String>? required;
  final dynamic example;
  final dynamic default_;
  final bool? nullable;

  String? get reference => ref;

  Schema({
    this.type,
    this.format,
    this.description,
    this.enum_,
    this.items,
    this.ref,
    this.properties,
    this.required,
    this.example,
    this.default_,
    this.nullable,
  });

  factory Schema.fromJson(Map<String, dynamic> json) {
    return Schema(
      type: json['type'] as String?,
      format: json['format'] as String?,
      description: json['description'] as String?,
      enum_: (json['enum'] as List<dynamic>?)?.cast<String>(),
      items: json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
      ref: json['\$ref'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, Schema.fromJson(v as Map<String, dynamic>)),
      ),
      required: (json['required'] as List<dynamic>?)?.cast<String>(),
      example: json['example'],
      default_: json['default'],
      nullable: json['nullable'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => _$SchemaToJson(this);
}
