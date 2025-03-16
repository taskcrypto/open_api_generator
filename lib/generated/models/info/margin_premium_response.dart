// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'margin_premium_response.freezed.dart';
part 'margin_premium_response.g.dart';

@freezed
class MarginPremiumResponse with _$MarginPremiumResponse {
  const factory MarginPremiumResponse({
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'GeneralMargin') Map<String, dynamic>? generalMargin,
    @JsonKey(name: 'DayTrade') Map<String, dynamic>? dayTrade,
  }) = _MarginPremiumResponse;

  factory MarginPremiumResponse.fromJson(Map<String, dynamic> json) =>
      _$MarginPremiumResponseFromJson(json);
}
