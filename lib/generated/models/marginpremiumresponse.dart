// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'marginpremiumresponse.freezed.dart';
part 'marginpremiumresponse.g.dart';

@freezed
class MarginPremiumResponse with _$MarginPremiumResponse {
  const factory MarginPremiumResponse({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'GeneralMargin')
    Map<String, dynamic>? generalMargin,
    @JsonKey(name: 'DayTrade')
    Map<String, dynamic>? dayTrade,
  }) = _MarginPremiumResponse;

  factory MarginPremiumResponse.fromJson(Map<String, dynamic> json) =>
      _$MarginPremiumResponseFromJson(json);
}
