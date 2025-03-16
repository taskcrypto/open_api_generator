// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_success.freezed.dart';
part 'token_success.g.dart';

@freezed
class TokenSuccess with _$TokenSuccess {
  const factory TokenSuccess({
    @JsonKey(name: 'ResultCode') required int resultCode,
    @JsonKey(name: 'Token') required String token,
  }) = _TokenSuccess;

  factory TokenSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenSuccessFromJson(json);
}
