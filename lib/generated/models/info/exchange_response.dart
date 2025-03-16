// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_response.freezed.dart';
part 'exchange_response.g.dart';

@freezed
class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'BidPrice') double? bidPrice,
    @JsonKey(name: 'Spread') double? spread,
    @JsonKey(name: 'AskPrice') double? askPrice,
    @JsonKey(name: 'Change') double? change,
    @JsonKey(name: 'Time') String? time,
  }) = _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}
