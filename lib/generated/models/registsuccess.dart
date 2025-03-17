// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registsuccess.freezed.dart';
part 'registsuccess.g.dart';

@freezed
class RegistSuccess with _$RegistSuccess {
  const factory RegistSuccess({
    @JsonKey(name: 'RegistList')
    List<Map<String, dynamic>>? registList,
  }) = _RegistSuccess;

  factory RegistSuccess.fromJson(Map<String, dynamic> json) =>
      _$RegistSuccessFromJson(json);
}
