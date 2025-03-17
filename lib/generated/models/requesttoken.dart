// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requesttoken.freezed.dart';
part 'requesttoken.g.dart';

@freezed
class RequestToken with _$RequestToken {
  const factory RequestToken({
    @JsonKey(name: 'APIPassword')
    String? aPIPassword,
  }) = _RequestToken;

  factory RequestToken.fromJson(Map<String, dynamic> json) =>
      _$RequestTokenFromJson(json);
}
