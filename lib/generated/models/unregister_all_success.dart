// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unregister_all_success.freezed.dart';
part 'unregister_all_success.g.dart';

@freezed
class UnregisterAllSuccess with _$UnregisterAllSuccess {
  const factory UnregisterAllSuccess({
    @JsonKey(name: 'RegistList')
    Map<String, dynamic>? registList,
  }) = _UnregisterAllSuccess;

  factory UnregisterAllSuccess.fromJson(Map<String, dynamic> json) =>
      _$UnregisterAllSuccessFromJson(json);
}
