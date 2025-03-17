// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'exchangeresponse.g.dart';

@JsonSerializable()
class ExchangeResponse {
  ExchangeResponse({
    this.Symbol,
    this.BidPrice,
    this.Spread,
    this.AskPrice,
    this.Change,
    this.Time,
  });

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeResponseToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'BidPrice')
  final double? BidPrice;
  @JsonKey(name: 'Spread')
  final double? Spread;
  @JsonKey(name: 'AskPrice')
  final double? AskPrice;
  @JsonKey(name: 'Change')
  final double? Change;
  @JsonKey(name: 'Time')
  final String? Time;
}
