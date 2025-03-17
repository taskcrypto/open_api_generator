// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requestunregister.g.dart';

@JsonSerializable()
class RequestUnregister {
  RequestUnregister({
    this.Symbols,
  });

  factory RequestUnregister.fromJson(Map<String, dynamic> json) =>
      _$RequestUnregisterFromJson(json);

  Map<String, dynamic> toJson() => _$RequestUnregisterToJson(this);

  @JsonKey(name: 'Symbols')
  final List<dynamic>? Symbols;
}
