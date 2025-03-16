class OpenApiSpec {
  final Components? components;
  final Map<String, PathItem> paths;

  OpenApiSpec({
    this.components,
    required this.paths,
  });

  factory OpenApiSpec.fromJson(Map<String, dynamic> json) {
    return OpenApiSpec(
      components: json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
      paths: (json['paths'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          PathItem.fromJson(value as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class Components {
  final Map<String, Schema>? schemas;

  Components({this.schemas});

  factory Components.fromJson(Map<String, dynamic> json) {
    return Components(
      schemas: json['schemas'] == null
          ? null
          : (json['schemas'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                Schema.fromJson(value as Map<String, dynamic>),
              ),
            ),
    );
  }
}

class Schema {
  final String? type;
  final String? format;
  final String? ref;
  final Map<String, Schema>? properties;
  final List<String>? required;
  final List<dynamic>? enum_;
  final Schema? items;
  final String? title;
  final Schema? additionalProperties;

  Schema({
    this.type,
    this.format,
    this.ref,
    this.properties,
    this.required,
    this.enum_,
    this.items,
    this.title,
    this.additionalProperties,
  });

  factory Schema.fromJson(Map<String, dynamic> json) {
    return Schema(
      type: json['type'] as String?,
      format: json['format'] as String?,
      ref: json['\$ref'] as String?,
      properties: json['properties'] == null
          ? null
          : (json['properties'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                Schema.fromJson(value as Map<String, dynamic>),
              ),
            ),
      required: (json['required'] as List<dynamic>?)?.cast<String>(),
      enum_: json['enum'] as List<dynamic>?,
      items: json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
      title: json['title'] as String?,
      additionalProperties: json['additionalProperties'] == null
          ? null
          : json['additionalProperties'] is bool
              ? null
              : Schema.fromJson(
                  json['additionalProperties'] as Map<String, dynamic>),
    );
  }
}

class PathItem {
  final Operation? get;
  final Operation? post;

  PathItem({
    this.get,
    this.post,
  });

  factory PathItem.fromJson(Map<String, dynamic> json) {
    return PathItem(
      get: json['get'] == null
          ? null
          : Operation.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : Operation.fromJson(json['post'] as Map<String, dynamic>),
    );
  }
}

class Operation {
  final List<String>? tags;
  final RequestBody? requestBody;
  final Map<String, Response> responses;

  Operation({
    this.tags,
    this.requestBody,
    required this.responses,
  });

  factory Operation.fromJson(Map<String, dynamic> json) {
    return Operation(
      tags: (json['tags'] as List<dynamic>?)?.cast<String>(),
      requestBody: json['requestBody'] == null
          ? null
          : RequestBody.fromJson(json['requestBody'] as Map<String, dynamic>),
      responses: (json['responses'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          Response.fromJson(value as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class RequestBody {
  final Map<String, MediaType> content;

  RequestBody({required this.content});

  factory RequestBody.fromJson(Map<String, dynamic> json) {
    return RequestBody(
      content: (json['content'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          MediaType.fromJson(value as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class Response {
  final Map<String, MediaType>? content;

  Response({this.content});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      content: json['content'] == null
          ? null
          : (json['content'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                MediaType.fromJson(value as Map<String, dynamic>),
              ),
            ),
    );
  }
}

class MediaType {
  final Schema schema;

  MediaType({required this.schema});

  factory MediaType.fromJson(Map<String, dynamic> json) {
    return MediaType(
      schema: Schema.fromJson(json['schema'] as Map<String, dynamic>),
    );
  }
}
