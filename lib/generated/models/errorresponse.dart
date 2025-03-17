// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'errorresponse.freezed.dart';
part 'errorresponse.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: 'Code')
    int? code,
    @JsonKey(name: 'Message')
    String? message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
