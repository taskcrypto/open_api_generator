// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_register.freezed.dart';
part 'request_register.g.dart';

@freezed
class RequestRegister with _$RequestRegister {
  const factory RequestRegister({
    @JsonKey(name: 'Symbols') required List<Map<String, dynamic>> symbols,
  }) = _RequestRegister;

  factory RequestRegister.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterFromJson(json);
}
