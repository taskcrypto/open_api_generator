// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'marginpremiumresponse.g.dart';

@JsonSerializable()
class MarginPremiumResponse {
  MarginPremiumResponse({
    this.Symbol,
    this.GeneralMargin,
    this.DayTrade,
  });

  factory MarginPremiumResponse.fromJson(Map<String, dynamic> json) =>
      _$MarginPremiumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarginPremiumResponseToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'GeneralMargin')
  final Map<String, dynamic>? GeneralMargin;
  @JsonKey(name: 'DayTrade')
  final Map<String, dynamic>? DayTrade;
}
