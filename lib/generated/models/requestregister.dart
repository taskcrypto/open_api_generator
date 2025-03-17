// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requestregister.g.dart';

@JsonSerializable()
class RequestRegister {
  RequestRegister({
    this.Symbols,
  });

  factory RequestRegister.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterFromJson(json);

  Map<String, dynamic> toJson() => _$RequestRegisterToJson(this);

  @JsonKey(name: 'Symbols')
  final List<dynamic>? Symbols;
}
