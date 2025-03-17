// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'symbolsuccess.g.dart';

@JsonSerializable()
class SymbolSuccess {
  SymbolSuccess({
    this.Symbol,
    this.SymbolName,
    this.DisplayName,
    this.Exchange,
    this.ExchangeName,
    this.BisCategory,
    this.TotalMarketValue,
    this.TotalStocks,
    this.TradingUnit,
    this.FiscalYearEndBasic,
    this.PriceRangeGroup,
    this.KCMarginBuy,
    this.KCMarginSell,
    this.MarginBuy,
    this.MarginSell,
    this.UpperLimit,
    this.LowerLimit,
    this.Underlyer,
    this.DerivMonth,
    this.TradeStart,
    this.TradeEnd,
    this.StrikePrice,
    this.PutOrCall,
    this.ClearingPrice,
  });

  factory SymbolSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$SymbolSuccessToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'SymbolName')
  final String? SymbolName;
  @JsonKey(name: 'DisplayName')
  final String? DisplayName;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'ExchangeName')
  final String? ExchangeName;
  @JsonKey(name: 'BisCategory')
  final String? BisCategory;
  @JsonKey(name: 'TotalMarketValue')
  final double? TotalMarketValue;
  @JsonKey(name: 'TotalStocks')
  final double? TotalStocks;
  @JsonKey(name: 'TradingUnit')
  final double? TradingUnit;
  @JsonKey(name: 'FiscalYearEndBasic')
  final int? FiscalYearEndBasic;
  @JsonKey(name: 'PriceRangeGroup')
  final String? PriceRangeGroup;
  @JsonKey(name: 'KCMarginBuy')
  final bool? KCMarginBuy;
  @JsonKey(name: 'KCMarginSell')
  final bool? KCMarginSell;
  @JsonKey(name: 'MarginBuy')
  final bool? MarginBuy;
  @JsonKey(name: 'MarginSell')
  final bool? MarginSell;
  @JsonKey(name: 'UpperLimit')
  final double? UpperLimit;
  @JsonKey(name: 'LowerLimit')
  final double? LowerLimit;
  @JsonKey(name: 'Underlyer')
  final String? Underlyer;
  @JsonKey(name: 'DerivMonth')
  final String? DerivMonth;
  @JsonKey(name: 'TradeStart')
  final int? TradeStart;
  @JsonKey(name: 'TradeEnd')
  final int? TradeEnd;
  @JsonKey(name: 'StrikePrice')
  final double? StrikePrice;
  @JsonKey(name: 'PutOrCall')
  final int? PutOrCall;
  @JsonKey(name: 'ClearingPrice')
  final double? ClearingPrice;
}
