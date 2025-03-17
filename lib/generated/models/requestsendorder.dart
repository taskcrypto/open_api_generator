// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requestsendorder.g.dart';

@JsonSerializable()
class RequestSendOrder {
  RequestSendOrder({
    this.Symbol,
    this.Exchange,
    this.SecurityType,
    this.Side,
    this.CashMargin,
    this.MarginTradeType,
    this.MarginPremiumUnit,
    this.DelivType,
    this.FundType,
    this.AccountType,
    this.Qty,
    this.ClosePositionOrder,
    this.ClosePositions,
    this.FrontOrderType,
    this.Price,
    this.ExpireDay,
    this.ReverseLimitOrder,
  });

  factory RequestSendOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderFromJson(json);

  Map<String, dynamic> toJson() => _$RequestSendOrderToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'SecurityType')
  final int? SecurityType;
  @JsonKey(name: 'Side')
  final String? Side;
  @JsonKey(name: 'CashMargin')
  final int? CashMargin;
  @JsonKey(name: 'MarginTradeType')
  final int? MarginTradeType;
  @JsonKey(name: 'MarginPremiumUnit')
  final double? MarginPremiumUnit;
  @JsonKey(name: 'DelivType')
  final int? DelivType;
  @JsonKey(name: 'FundType')
  final String? FundType;
  @JsonKey(name: 'AccountType')
  final int? AccountType;
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
