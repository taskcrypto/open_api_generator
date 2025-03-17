// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchangeresponse.freezed.dart';
part 'exchangeresponse.g.dart';

@freezed
class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'BidPrice')
    double? bidPrice,
    @JsonKey(name: 'Spread')
    double? spread,
    @JsonKey(name: 'AskPrice')
    double? askPrice,
    @JsonKey(name: 'Change')
    double? change,
    @JsonKey(name: 'Time')
    String? time,
  }) = _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}
