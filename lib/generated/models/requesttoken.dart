// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requesttoken.g.dart';

@JsonSerializable()
class RequestToken {
  RequestToken({
    this.APIPassword,
  });

  factory RequestToken.fromJson(Map<String, dynamic> json) =>
      _$RequestTokenFromJson(json);

  Map<String, dynamic> toJson() => _$RequestTokenToJson(this);

  @JsonKey(name: 'APIPassword')
  final String? APIPassword;
}
