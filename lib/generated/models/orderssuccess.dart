// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'orderssuccess.g.dart';

@JsonSerializable()
class OrdersSuccess {
  OrdersSuccess({
    this.ID,
    this.State,
    this.OrderState,
    this.OrdType,
    this.RecvTime,
    this.Symbol,
    this.SymbolName,
    this.Exchange,
    this.ExchangeName,
    this.TimeInForce,
    this.Price,
    this.OrderQty,
    this.CumQty,
    this.Side,
    this.CashMargin,
    this.AccountType,
    this.DelivType,
    this.ExpireDay,
    this.MarginTradeType,
    this.MarginPremium,
    this.Details,
  });

  factory OrdersSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrdersSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersSuccessToJson(this);

  @JsonKey(name: 'ID')
  final String? ID;
  @JsonKey(name: 'State')
  final int? State;
  @JsonKey(name: 'OrderState')
  final int? OrderState;
  @JsonKey(name: 'OrdType')
  final int? OrdType;
  @JsonKey(name: 'RecvTime')
  final String? RecvTime;
  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'SymbolName')
  final String? SymbolName;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'ExchangeName')
  final String? ExchangeName;
  @JsonKey(name: 'TimeInForce')
  final int? TimeInForce;
  @JsonKey(name: 'Price')
  final double? Price;
  @JsonKey(name: 'OrderQty')
  final double? OrderQty;
  @JsonKey(name: 'CumQty')
  final double? CumQty;
  @JsonKey(name: 'Side')
  final String? Side;
  @JsonKey(name: 'CashMargin')
  final int? CashMargin;
  @JsonKey(name: 'AccountType')
  final int? AccountType;
  @JsonKey(name: 'DelivType')
  final int? DelivType;
  @JsonKey(name: 'ExpireDay')
  final int? ExpireDay;
  @JsonKey(name: 'MarginTradeType')
  final int? MarginTradeType;
  @JsonKey(name: 'MarginPremium')
  final double? MarginPremium;
  @JsonKey(name: 'Details')
  final List<dynamic>? Details;
}
