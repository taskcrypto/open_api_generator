// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestunregister.freezed.dart';
part 'requestunregister.g.dart';

@freezed
class RequestUnregister with _$RequestUnregister {
  const factory RequestUnregister({
    @JsonKey(name: 'Symbols')
    List<Map<String, dynamic>>? symbols,
  }) = _RequestUnregister;

  factory RequestUnregister.fromJson(Map<String, dynamic> json) =>
      _$RequestUnregisterFromJson(json);
}
