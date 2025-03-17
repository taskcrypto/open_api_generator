// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requestsendorderderivoption.g.dart';

@JsonSerializable()
class RequestSendOrderDerivOption {
  RequestSendOrderDerivOption({
    this.Symbol,
    this.Exchange,
    this.TradeType,
    this.TimeInForce,
    this.Side,
    this.Qty,
    this.ClosePositionOrder,
    this.ClosePositions,
    this.FrontOrderType,
    this.Price,
    this.ExpireDay,
    this.ReverseLimitOrder,
  });

  factory RequestSendOrderDerivOption.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivOptionFromJson(json);

  Map<String, dynamic> toJson() => _$RequestSendOrderDerivOptionToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'TradeType')
  final int? TradeType;
  @JsonKey(name: 'TimeInForce')
  final int? TimeInForce;
  @JsonKey(name: 'Side')
  final String? Side;
  @JsonKey(name: 'Qty')
  final int? Qty;
  @JsonKey(name: 'ClosePositionOrder')
  final int? ClosePositionOrder;
  @JsonKey(name: 'ClosePositions')
  final List<dynamic>? ClosePositions;
  @JsonKey(name: 'FrontOrderType')
  final int? FrontOrderType;
  @JsonKey(name: 'Price')
  final double? Price;
  @JsonKey(name: 'ExpireDay')
  final int? ExpireDay;
  @JsonKey(name: 'ReverseLimitOrder')
  final Map<String, dynamic>? ReverseLimitOrder;
}
