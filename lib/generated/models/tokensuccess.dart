// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokensuccess.freezed.dart';
part 'tokensuccess.g.dart';

@freezed
class TokenSuccess with _$TokenSuccess {
  const factory TokenSuccess({
    @JsonKey(name: 'ResultCode')
    int? resultCode,
    @JsonKey(name: 'Token')
    String? token,
  }) = _TokenSuccess;

  factory TokenSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenSuccessFromJson(json);
}
