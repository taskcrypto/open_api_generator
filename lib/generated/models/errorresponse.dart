// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'errorresponse.g.dart';

@JsonSerializable()
class ErrorResponse {
  ErrorResponse({
    this.Code,
    this.Message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);

  @JsonKey(name: 'Code')
  final int? Code;
  @JsonKey(name: 'Message')
  final String? Message;
}
