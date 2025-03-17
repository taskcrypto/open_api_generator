// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'tokensuccess.g.dart';

@JsonSerializable()
class TokenSuccess {
  TokenSuccess({
    this.ResultCode,
    this.Token,
  });

  factory TokenSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$TokenSuccessToJson(this);

  @JsonKey(name: 'ResultCode')
  final int? ResultCode;
  @JsonKey(name: 'Token')
  final String? Token;
}
