// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_success.freezed.dart';
part 'board_success.g.dart';

@freezed
class BoardSuccess with _$BoardSuccess {
  const factory BoardSuccess({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'SymbolName') required String symbolName,
    @JsonKey(name: 'Exchange') required int exchange,
    @JsonKey(name: 'ExchangeName') required String exchangeName,
    @JsonKey(name: 'CurrentPrice') required double currentPrice,
    @JsonKey(name: 'CurrentPriceTime') required String currentPriceTime,
    @JsonKey(name: 'CurrentPriceChangeStatus')
    required String currentPriceChangeStatus,
    @JsonKey(name: 'CurrentPriceStatus') required int currentPriceStatus,
    @JsonKey(name: 'CalcPrice') required double calcPrice,
    @JsonKey(name: 'PreviousClose') required double previousClose,
    @JsonKey(name: 'PreviousCloseTime') required String previousCloseTime,
    @JsonKey(name: 'ChangePreviousClose') required double changePreviousClose,
    @JsonKey(name: 'ChangePreviousClosePer')
    required double changePreviousClosePer,
    @JsonKey(name: 'OpeningPrice') required double openingPrice,
    @JsonKey(name: 'OpeningPriceTime') required String openingPriceTime,
    @JsonKey(name: 'HighPrice') required double highPrice,
    @JsonKey(name: 'HighPriceTime') required String highPriceTime,
    @JsonKey(name: 'LowPrice') required double lowPrice,
    @JsonKey(name: 'LowPriceTime') required String lowPriceTime,
    @JsonKey(name: 'TradingVolume') required double tradingVolume,
    @JsonKey(name: 'TradingVolumeTime') required String tradingVolumeTime,
    @JsonKey(name: 'VWAP') required double vwap,
    @JsonKey(name: 'TradingValue') required double tradingValue,
    @JsonKey(name: 'BidQty') required double bidQty,
    @JsonKey(name: 'BidPrice') required double bidPrice,
    @JsonKey(name: 'BidTime') required String bidTime,
    @JsonKey(name: 'BidSign') required String bidSign,
    @JsonKey(name: 'MarketOrderSellQty') required double marketOrderSellQty,
    @JsonKey(name: 'Sell1') required Map<String, dynamic> sell1,
    @JsonKey(name: 'Sell2') required Map<String, dynamic> sell2,
    @JsonKey(name: 'Sell3') required Map<String, dynamic> sell3,
    @JsonKey(name: 'Sell4') required Map<String, dynamic> sell4,
    @JsonKey(name: 'Sell5') required Map<String, dynamic> sell5,
    @JsonKey(name: 'Sell6') required Map<String, dynamic> sell6,
    @JsonKey(name: 'Sell7') required Map<String, dynamic> sell7,
    @JsonKey(name: 'Sell8') required Map<String, dynamic> sell8,
    @JsonKey(name: 'Sell9') required Map<String, dynamic> sell9,
    @JsonKey(name: 'Sell10') required Map<String, dynamic> sell10,
    @JsonKey(name: 'AskQty') required double askQty,
    @JsonKey(name: 'AskPrice') required double askPrice,
    @JsonKey(name: 'AskTime') required String askTime,
    @JsonKey(name: 'AskSign') required String askSign,
    @JsonKey(name: 'MarketOrderBuyQty') required double marketOrderBuyQty,
    @JsonKey(name: 'Buy1') required Map<String, dynamic> buy1,
    @JsonKey(name: 'Buy2') required Map<String, dynamic> buy2,
    @JsonKey(name: 'Buy3') required Map<String, dynamic> buy3,
    @JsonKey(name: 'Buy4') required Map<String, dynamic> buy4,
    @JsonKey(name: 'Buy5') required Map<String, dynamic> buy5,
    @JsonKey(name: 'Buy6') required Map<String, dynamic> buy6,
    @JsonKey(name: 'Buy7') required Map<String, dynamic> buy7,
    @JsonKey(name: 'Buy8') required Map<String, dynamic> buy8,
    @JsonKey(name: 'Buy9') required Map<String, dynamic> buy9,
    @JsonKey(name: 'Buy10') required Map<String, dynamic> buy10,
    @JsonKey(name: 'OverSellQty') required double overSellQty,
    @JsonKey(name: 'UnderBuyQty') required double underBuyQty,
    @JsonKey(name: 'TotalMarketValue') required double totalMarketValue,
    @JsonKey(name: 'ClearingPrice') required double clearingPrice,
    @JsonKey(name: 'IV') required double iv,
    @JsonKey(name: 'Gamma') required double gamma,
    @JsonKey(name: 'Theta') required double theta,
    @JsonKey(name: 'Vega') required double vega,
    @JsonKey(name: 'Delta') required double delta,
    @JsonKey(name: 'SecurityType') required int securityType,
  }) = _BoardSuccess;

  factory BoardSuccess.fromJson(Map<String, dynamic> json) =>
      _$BoardSuccessFromJson(json);
}
