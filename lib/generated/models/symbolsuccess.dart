// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbolsuccess.freezed.dart';
part 'symbolsuccess.g.dart';

@freezed
class SymbolSuccess with _$SymbolSuccess {
  const factory SymbolSuccess({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'SymbolName')
    String? symbolName,
    @JsonKey(name: 'DisplayName')
    String? displayName,
    @JsonKey(name: 'Exchange')
    int? exchange,
    @JsonKey(name: 'ExchangeName')
    String? exchangeName,
    @JsonKey(name: 'BisCategory')
    String? bisCategory,
    @JsonKey(name: 'TotalMarketValue')
    double? totalMarketValue,
    @JsonKey(name: 'TotalStocks')
    double? totalStocks,
    @JsonKey(name: 'TradingUnit')
    double? tradingUnit,
    @JsonKey(name: 'FiscalYearEndBasic')
    int? fiscalYearEndBasic,
    @JsonKey(name: 'PriceRangeGroup')
    String? priceRangeGroup,
    @JsonKey(name: 'KCMarginBuy')
    bool? kCMarginBuy,
    @JsonKey(name: 'KCMarginSell')
    bool? kCMarginSell,
    @JsonKey(name: 'MarginBuy')
    bool? marginBuy,
    @JsonKey(name: 'MarginSell')
    bool? marginSell,
    @JsonKey(name: 'UpperLimit')
    double? upperLimit,
    @JsonKey(name: 'LowerLimit')
    double? lowerLimit,
    @JsonKey(name: 'Underlyer')
    String? underlyer,
    @JsonKey(name: 'DerivMonth')
    String? derivMonth,
    @JsonKey(name: 'TradeStart')
    int? tradeStart,
    @JsonKey(name: 'TradeEnd')
    int? tradeEnd,
    @JsonKey(name: 'StrikePrice')
    double? strikePrice,
    @JsonKey(name: 'PutOrCall')
    int? putOrCall,
    @JsonKey(name: 'ClearingPrice')
    double? clearingPrice,
  }) = _SymbolSuccess;

  factory SymbolSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolSuccessFromJson(json);
}
