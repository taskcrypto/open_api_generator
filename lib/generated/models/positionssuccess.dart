// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'positionssuccess.g.dart';

@JsonSerializable()
class PositionsSuccess {
  PositionsSuccess({
    this.ExecutionID,
    this.AccountType,
    this.Symbol,
    this.SymbolName,
    this.Exchange,
    this.ExchangeName,
    this.SecurityType,
    this.ExecutionDay,
    this.Price,
    this.LeavesQty,
    this.HoldQty,
    this.Side,
    this.Expenses,
    this.Commission,
    this.CommissionTax,
    this.ExpireDay,
    this.MarginTradeType,
    this.CurrentPrice,
    this.Valuation,
    this.ProfitLoss,
    this.ProfitLossRate,
  });

  factory PositionsSuccess.fromJson(Map<String, dynamic> json) =>
      _$PositionsSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$PositionsSuccessToJson(this);

  @JsonKey(name: 'ExecutionID')
  final String? ExecutionID;
  @JsonKey(name: 'AccountType')
  final int? AccountType;
  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'SymbolName')
  final String? SymbolName;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'ExchangeName')
  final String? ExchangeName;
  @JsonKey(name: 'SecurityType')
  final int? SecurityType;
  @JsonKey(name: 'ExecutionDay')
  final int? ExecutionDay;
  @JsonKey(name: 'Price')
  final double? Price;
  @JsonKey(name: 'LeavesQty')
  final double? LeavesQty;
  @JsonKey(name: 'HoldQty')
  final double? HoldQty;
  @JsonKey(name: 'Side')
  final String? Side;
  @JsonKey(name: 'Expenses')
  final double? Expenses;
  @JsonKey(name: 'Commission')
  final double? Commission;
  @JsonKey(name: 'CommissionTax')
  final double? CommissionTax;
  @JsonKey(name: 'ExpireDay')
  final int? ExpireDay;
  @JsonKey(name: 'MarginTradeType')
  final int? MarginTradeType;
  @JsonKey(name: 'CurrentPrice')
  final double? CurrentPrice;
  @JsonKey(name: 'Valuation')
  final double? Valuation;
  @JsonKey(name: 'ProfitLoss')
  final double? ProfitLoss;
  @JsonKey(name: 'ProfitLossRate')
  final double? ProfitLossRate;
}
