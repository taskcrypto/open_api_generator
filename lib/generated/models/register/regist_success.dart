// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'regist_success.freezed.dart';
part 'regist_success.g.dart';

@freezed
class RegistSuccess with _$RegistSuccess {
  const factory RegistSuccess({
    @JsonKey(name: 'RegistList')
    required List<Map<String, dynamic>>? registList,
  }) = _RegistSuccess;

  factory RegistSuccess.fromJson(Map<String, dynamic> json) =>
      _$RegistSuccessFromJson(json);
}
