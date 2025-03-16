// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_success.freezed.dart';
part 'board_success.g.dart';

@freezed
class BoardSuccess with _$BoardSuccess {
  const factory BoardSuccess({
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'SymbolName') String? symbolName,
    @JsonKey(name: 'Exchange') int? exchange,
    @JsonKey(name: 'ExchangeName') String? exchangeName,
    @JsonKey(name: 'CurrentPrice') double? currentPrice,
    @JsonKey(name: 'CurrentPriceTime') String? currentPriceTime,
    @JsonKey(name: 'CurrentPriceChangeStatus') String? currentPriceChangeStatus,
    @JsonKey(name: 'CurrentPriceStatus') int? currentPriceStatus,
    @JsonKey(name: 'CalcPrice') double? calcPrice,
    @JsonKey(name: 'PreviousClose') double? previousClose,
    @JsonKey(name: 'PreviousCloseTime') String? previousCloseTime,
    @JsonKey(name: 'ChangePreviousClose') double? changePreviousClose,
    @JsonKey(name: 'ChangePreviousClosePer') double? changePreviousClosePer,
    @JsonKey(name: 'OpeningPrice') double? openingPrice,
    @JsonKey(name: 'OpeningPriceTime') String? openingPriceTime,
    @JsonKey(name: 'HighPrice') double? highPrice,
    @JsonKey(name: 'HighPriceTime') String? highPriceTime,
    @JsonKey(name: 'LowPrice') double? lowPrice,
    @JsonKey(name: 'LowPriceTime') String? lowPriceTime,
    @JsonKey(name: 'TradingVolume') double? tradingVolume,
    @JsonKey(name: 'TradingVolumeTime') String? tradingVolumeTime,
    @JsonKey(name: 'VWAP') double? vwap,
    @JsonKey(name: 'TradingValue') double? tradingValue,
    @JsonKey(name: 'BidQty') double? bidQty,
    @JsonKey(name: 'BidPrice') double? bidPrice,
    @JsonKey(name: 'BidTime') String? bidTime,
    @JsonKey(name: 'BidSign') String? bidSign,
    @JsonKey(name: 'MarketOrderSellQty') double? marketOrderSellQty,
    @JsonKey(name: 'Sell1') Map<String, dynamic>? sell1,
    @JsonKey(name: 'Sell2') Map<String, dynamic>? sell2,
    @JsonKey(name: 'Sell3') Map<String, dynamic>? sell3,
    @JsonKey(name: 'Sell4') Map<String, dynamic>? sell4,
    @JsonKey(name: 'Sell5') Map<String, dynamic>? sell5,
    @JsonKey(name: 'Sell6') Map<String, dynamic>? sell6,
    @JsonKey(name: 'Sell7') Map<String, dynamic>? sell7,
    @JsonKey(name: 'Sell8') Map<String, dynamic>? sell8,
    @JsonKey(name: 'Sell9') Map<String, dynamic>? sell9,
    @JsonKey(name: 'Sell10') Map<String, dynamic>? sell10,
    @JsonKey(name: 'AskQty') double? askQty,
    @JsonKey(name: 'AskPrice') double? askPrice,
    @JsonKey(name: 'AskTime') String? askTime,
    @JsonKey(name: 'AskSign') String? askSign,
    @JsonKey(name: 'MarketOrderBuyQty') double? marketOrderBuyQty,
    @JsonKey(name: 'Buy1') Map<String, dynamic>? buy1,
    @JsonKey(name: 'Buy2') Map<String, dynamic>? buy2,
    @JsonKey(name: 'Buy3') Map<String, dynamic>? buy3,
    @JsonKey(name: 'Buy4') Map<String, dynamic>? buy4,
    @JsonKey(name: 'Buy5') Map<String, dynamic>? buy5,
    @JsonKey(name: 'Buy6') Map<String, dynamic>? buy6,
    @JsonKey(name: 'Buy7') Map<String, dynamic>? buy7,
    @JsonKey(name: 'Buy8') Map<String, dynamic>? buy8,
    @JsonKey(name: 'Buy9') Map<String, dynamic>? buy9,
    @JsonKey(name: 'Buy10') Map<String, dynamic>? buy10,
    @JsonKey(name: 'OverSellQty') double? overSellQty,
    @JsonKey(name: 'UnderBuyQty') double? underBuyQty,
    @JsonKey(name: 'TotalMarketValue') double? totalMarketValue,
    @JsonKey(name: 'ClearingPrice') double? clearingPrice,
    @JsonKey(name: 'IV') double? iv,
    @JsonKey(name: 'Gamma') double? gamma,
    @JsonKey(name: 'Theta') double? theta,
    @JsonKey(name: 'Vega') double? vega,
    @JsonKey(name: 'Delta') double? delta,
    @JsonKey(name: 'SecurityType') int? securityType,
  }) = _BoardSuccess;

  factory BoardSuccess.fromJson(Map<String, dynamic> json) =>
      _$BoardSuccessFromJson(json);
}
