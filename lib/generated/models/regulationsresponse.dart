// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'regulationsresponse.g.dart';

@JsonSerializable()
class RegulationsResponse {
  RegulationsResponse({
    this.Symbol,
    this.RegulationsInfo,
  });

  factory RegulationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RegulationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegulationsResponseToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'RegulationsInfo')
  final List<dynamic>? RegulationsInfo;
}
