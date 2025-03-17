// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'boardsuccess.g.dart';

@JsonSerializable()
class BoardSuccess {
  BoardSuccess({
    this.Symbol,
    this.SymbolName,
    this.Exchange,
    this.ExchangeName,
    this.CurrentPrice,
    this.CurrentPriceTime,
    this.CurrentPriceChangeStatus,
    this.CurrentPriceStatus,
    this.CalcPrice,
    this.PreviousClose,
    this.PreviousCloseTime,
    this.ChangePreviousClose,
    this.ChangePreviousClosePer,
    this.OpeningPrice,
    this.OpeningPriceTime,
    this.HighPrice,
    this.HighPriceTime,
    this.LowPrice,
    this.LowPriceTime,
    this.TradingVolume,
    this.TradingVolumeTime,
    this.VWAP,
    this.TradingValue,
    this.BidQty,
    this.BidPrice,
    this.BidTime,
    this.BidSign,
    this.MarketOrderSellQty,
    this.Sell1,
    this.Sell2,
    this.Sell3,
    this.Sell4,
    this.Sell5,
    this.Sell6,
    this.Sell7,
    this.Sell8,
    this.Sell9,
    this.Sell10,
    this.AskQty,
    this.AskPrice,
    this.AskTime,
    this.AskSign,
    this.MarketOrderBuyQty,
    this.Buy1,
    this.Buy2,
    this.Buy3,
    this.Buy4,
    this.Buy5,
    this.Buy6,
    this.Buy7,
    this.Buy8,
    this.Buy9,
    this.Buy10,
    this.OverSellQty,
    this.UnderBuyQty,
    this.TotalMarketValue,
    this.ClearingPrice,
    this.IV,
    this.Gamma,
    this.Theta,
    this.Vega,
    this.Delta,
    this.SecurityType,
  });

  factory BoardSuccess.fromJson(Map<String, dynamic> json) =>
      _$BoardSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$BoardSuccessToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'SymbolName')
  final String? SymbolName;
  @JsonKey(name: 'Exchange')
  final int? Exchange;
  @JsonKey(name: 'ExchangeName')
  final String? ExchangeName;
  @JsonKey(name: 'CurrentPrice')
  final double? CurrentPrice;
  @JsonKey(name: 'CurrentPriceTime')
  final String? CurrentPriceTime;
  @JsonKey(name: 'CurrentPriceChangeStatus')
  final String? CurrentPriceChangeStatus;
  @JsonKey(name: 'CurrentPriceStatus')
  final int? CurrentPriceStatus;
  @JsonKey(name: 'CalcPrice')
  final double? CalcPrice;
  @JsonKey(name: 'PreviousClose')
  final double? PreviousClose;
  @JsonKey(name: 'PreviousCloseTime')
  final String? PreviousCloseTime;
  @JsonKey(name: 'ChangePreviousClose')
  final double? ChangePreviousClose;
  @JsonKey(name: 'ChangePreviousClosePer')
  final double? ChangePreviousClosePer;
  @JsonKey(name: 'OpeningPrice')
  final double? OpeningPrice;
  @JsonKey(name: 'OpeningPriceTime')
  final String? OpeningPriceTime;
  @JsonKey(name: 'HighPrice')
  final double? HighPrice;
  @JsonKey(name: 'HighPriceTime')
  final String? HighPriceTime;
  @JsonKey(name: 'LowPrice')
  final double? LowPrice;
  @JsonKey(name: 'LowPriceTime')
  final String? LowPriceTime;
  @JsonKey(name: 'TradingVolume')
  final double? TradingVolume;
  @JsonKey(name: 'TradingVolumeTime')
  final String? TradingVolumeTime;
  @JsonKey(name: 'VWAP')
  final double? VWAP;
  @JsonKey(name: 'TradingValue')
  final double? TradingValue;
  @JsonKey(name: 'BidQty')
  final double? BidQty;
  @JsonKey(name: 'BidPrice')
  final double? BidPrice;
  @JsonKey(name: 'BidTime')
  final String? BidTime;
  @JsonKey(name: 'BidSign')
  final String? BidSign;
  @JsonKey(name: 'MarketOrderSellQty')
  final double? MarketOrderSellQty;
  @JsonKey(name: 'Sell1')
  final Map<String, dynamic>? Sell1;
  @JsonKey(name: 'Sell2')
  final Map<String, dynamic>? Sell2;
  @JsonKey(name: 'Sell3')
  final Map<String, dynamic>? Sell3;
  @JsonKey(name: 'Sell4')
  final Map<String, dynamic>? Sell4;
  @JsonKey(name: 'Sell5')
  final Map<String, dynamic>? Sell5;
  @JsonKey(name: 'Sell6')
  final Map<String, dynamic>? Sell6;
  @JsonKey(name: 'Sell7')
  final Map<String, dynamic>? Sell7;
  @JsonKey(name: 'Sell8')
  final Map<String, dynamic>? Sell8;
  @JsonKey(name: 'Sell9')
  final Map<String, dynamic>? Sell9;
  @JsonKey(name: 'Sell10')
  final Map<String, dynamic>? Sell10;
  @JsonKey(name: 'AskQty')
  final double? AskQty;
  @JsonKey(name: 'AskPrice')
  final double? AskPrice;
  @JsonKey(name: 'AskTime')
  final String? AskTime;
  @JsonKey(name: 'AskSign')
  final String? AskSign;
  @JsonKey(name: 'MarketOrderBuyQty')
  final double? MarketOrderBuyQty;
  @JsonKey(name: 'Buy1')
  final Map<String, dynamic>? Buy1;
  @JsonKey(name: 'Buy2')
  final Map<String, dynamic>? Buy2;
  @JsonKey(name: 'Buy3')
  final Map<String, dynamic>? Buy3;
  @JsonKey(name: 'Buy4')
  final Map<String, dynamic>? Buy4;
  @JsonKey(name: 'Buy5')
  final Map<String, dynamic>? Buy5;
  @JsonKey(name: 'Buy6')
  final Map<String, dynamic>? Buy6;
  @JsonKey(name: 'Buy7')
  final Map<String, dynamic>? Buy7;
  @JsonKey(name: 'Buy8')
  final Map<String, dynamic>? Buy8;
  @JsonKey(name: 'Buy9')
  final Map<String, dynamic>? Buy9;
  @JsonKey(name: 'Buy10')
  final Map<String, dynamic>? Buy10;
  @JsonKey(name: 'OverSellQty')
  final double? OverSellQty;
  @JsonKey(name: 'UnderBuyQty')
  final double? UnderBuyQty;
  @JsonKey(name: 'TotalMarketValue')
  final double? TotalMarketValue;
  @JsonKey(name: 'ClearingPrice')
  final double? ClearingPrice;
  @JsonKey(name: 'IV')
  final double? IV;
  @JsonKey(name: 'Gamma')
  final double? Gamma;
  @JsonKey(name: 'Theta')
  final double? Theta;
  @JsonKey(name: 'Vega')
  final double? Vega;
  @JsonKey(name: 'Delta')
  final double? Delta;
  @JsonKey(name: 'SecurityType')
  final int? SecurityType;
}
