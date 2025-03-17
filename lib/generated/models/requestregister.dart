// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestregister.freezed.dart';
part 'requestregister.g.dart';

@freezed
class RequestRegister with _$RequestRegister {
  const factory RequestRegister({
    @JsonKey(name: 'Symbols')
    List<Map<String, dynamic>>? symbols,
  }) = _RequestRegister;

  factory RequestRegister.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterFromJson(json);
}
