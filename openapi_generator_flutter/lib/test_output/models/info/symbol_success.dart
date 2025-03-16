// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol_success.freezed.dart';
part 'symbol_success.g.dart';

@freezed
class SymbolSuccess with _$SymbolSuccess {
  const factory SymbolSuccess({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'SymbolName') required String symbolName,
    @JsonKey(name: 'DisplayName') required String displayName,
    @JsonKey(name: 'Exchange') required int exchange,
    @JsonKey(name: 'ExchangeName') required String exchangeName,
    @JsonKey(name: 'BisCategory') required String bisCategory,
    @JsonKey(name: 'TotalMarketValue') required double totalMarketValue,
    @JsonKey(name: 'TotalStocks') required double totalStocks,
    @JsonKey(name: 'TradingUnit') required double tradingUnit,
    @JsonKey(name: 'FiscalYearEndBasic') required int fiscalYearEndBasic,
    @JsonKey(name: 'PriceRangeGroup') required String priceRangeGroup,
    @JsonKey(name: 'KCMarginBuy') required bool kcMarginBuy,
    @JsonKey(name: 'KCMarginSell') required bool kcMarginSell,
    @JsonKey(name: 'MarginBuy') required bool marginBuy,
    @JsonKey(name: 'MarginSell') required bool marginSell,
    @JsonKey(name: 'UpperLimit') required double upperLimit,
    @JsonKey(name: 'LowerLimit') required double lowerLimit,
    @JsonKey(name: 'Underlyer') required String underlyer,
    @JsonKey(name: 'DerivMonth') required String derivMonth,
    @JsonKey(name: 'TradeStart') required int tradeStart,
    @JsonKey(name: 'TradeEnd') required int tradeEnd,
    @JsonKey(name: 'StrikePrice') required double strikePrice,
    @JsonKey(name: 'PutOrCall') required int putOrCall,
    @JsonKey(name: 'ClearingPrice') required double clearingPrice,
  }) = _SymbolSuccess;

  factory SymbolSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolSuccessFromJson(json);
}
