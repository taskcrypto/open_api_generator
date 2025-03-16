// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardSuccessImpl _$$BoardSuccessImplFromJson(Map<String, dynamic> json) =>
    _$BoardSuccessImpl(
      symbol: json['Symbol'] as String?,
      symbolName: json['SymbolName'] as String?,
      exchange: (json['Exchange'] as num?)?.toInt(),
      exchangeName: json['ExchangeName'] as String?,
      currentPrice: (json['CurrentPrice'] as num?)?.toDouble(),
      currentPriceTime: json['CurrentPriceTime'] as String?,
      currentPriceChangeStatus: json['CurrentPriceChangeStatus'] as String?,
      currentPriceStatus: (json['CurrentPriceStatus'] as num?)?.toInt(),
      calcPrice: (json['CalcPrice'] as num?)?.toDouble(),
      previousClose: (json['PreviousClose'] as num?)?.toDouble(),
      previousCloseTime: json['PreviousCloseTime'] as String?,
      changePreviousClose: (json['ChangePreviousClose'] as num?)?.toDouble(),
      changePreviousClosePer:
          (json['ChangePreviousClosePer'] as num?)?.toDouble(),
      openingPrice: (json['OpeningPrice'] as num?)?.toDouble(),
      openingPriceTime: json['OpeningPriceTime'] as String?,
      highPrice: (json['HighPrice'] as num?)?.toDouble(),
      highPriceTime: json['HighPriceTime'] as String?,
      lowPrice: (json['LowPrice'] as num?)?.toDouble(),
      lowPriceTime: json['LowPriceTime'] as String?,
      tradingVolume: (json['TradingVolume'] as num?)?.toDouble(),
      tradingVolumeTime: json['TradingVolumeTime'] as String?,
      vwap: (json['VWAP'] as num?)?.toDouble(),
      tradingValue: (json['TradingValue'] as num?)?.toDouble(),
      bidQty: (json['BidQty'] as num?)?.toDouble(),
      bidPrice: (json['BidPrice'] as num?)?.toDouble(),
      bidTime: json['BidTime'] as String?,
      bidSign: json['BidSign'] as String?,
      marketOrderSellQty: (json['MarketOrderSellQty'] as num?)?.toDouble(),
      sell1: json['Sell1'] as Map<String, dynamic>?,
      sell2: json['Sell2'] as Map<String, dynamic>?,
      sell3: json['Sell3'] as Map<String, dynamic>?,
      sell4: json['Sell4'] as Map<String, dynamic>?,
      sell5: json['Sell5'] as Map<String, dynamic>?,
      sell6: json['Sell6'] as Map<String, dynamic>?,
      sell7: json['Sell7'] as Map<String, dynamic>?,
      sell8: json['Sell8'] as Map<String, dynamic>?,
      sell9: json['Sell9'] as Map<String, dynamic>?,
      sell10: json['Sell10'] as Map<String, dynamic>?,
      askQty: (json['AskQty'] as num?)?.toDouble(),
      askPrice: (json['AskPrice'] as num?)?.toDouble(),
      askTime: json['AskTime'] as String?,
      askSign: json['AskSign'] as String?,
      marketOrderBuyQty: (json['MarketOrderBuyQty'] as num?)?.toDouble(),
      buy1: json['Buy1'] as Map<String, dynamic>?,
      buy2: json['Buy2'] as Map<String, dynamic>?,
      buy3: json['Buy3'] as Map<String, dynamic>?,
      buy4: json['Buy4'] as Map<String, dynamic>?,
      buy5: json['Buy5'] as Map<String, dynamic>?,
      buy6: json['Buy6'] as Map<String, dynamic>?,
      buy7: json['Buy7'] as Map<String, dynamic>?,
      buy8: json['Buy8'] as Map<String, dynamic>?,
      buy9: json['Buy9'] as Map<String, dynamic>?,
      buy10: json['Buy10'] as Map<String, dynamic>?,
      overSellQty: (json['OverSellQty'] as num?)?.toDouble(),
      underBuyQty: (json['UnderBuyQty'] as num?)?.toDouble(),
      totalMarketValue: (json['TotalMarketValue'] as num?)?.toDouble(),
      clearingPrice: (json['ClearingPrice'] as num?)?.toDouble(),
      iv: (json['IV'] as num?)?.toDouble(),
      gamma: (json['Gamma'] as num?)?.toDouble(),
      theta: (json['Theta'] as num?)?.toDouble(),
      vega: (json['Vega'] as num?)?.toDouble(),
      delta: (json['Delta'] as num?)?.toDouble(),
      securityType: (json['SecurityType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BoardSuccessImplToJson(_$BoardSuccessImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'SymbolName': instance.symbolName,
      'Exchange': instance.exchange,
      'ExchangeName': instance.exchangeName,
      'CurrentPrice': instance.currentPrice,
      'CurrentPriceTime': instance.currentPriceTime,
      'CurrentPriceChangeStatus': instance.currentPriceChangeStatus,
      'CurrentPriceStatus': instance.currentPriceStatus,
      'CalcPrice': instance.calcPrice,
      'PreviousClose': instance.previousClose,
      'PreviousCloseTime': instance.previousCloseTime,
      'ChangePreviousClose': instance.changePreviousClose,
      'ChangePreviousClosePer': instance.changePreviousClosePer,
      'OpeningPrice': instance.openingPrice,
      'OpeningPriceTime': instance.openingPriceTime,
      'HighPrice': instance.highPrice,
      'HighPriceTime': instance.highPriceTime,
      'LowPrice': instance.lowPrice,
      'LowPriceTime': instance.lowPriceTime,
      'TradingVolume': instance.tradingVolume,
      'TradingVolumeTime': instance.tradingVolumeTime,
      'VWAP': instance.vwap,
      'TradingValue': instance.tradingValue,
      'BidQty': instance.bidQty,
      'BidPrice': instance.bidPrice,
      'BidTime': instance.bidTime,
      'BidSign': instance.bidSign,
      'MarketOrderSellQty': instance.marketOrderSellQty,
      'Sell1': instance.sell1,
      'Sell2': instance.sell2,
      'Sell3': instance.sell3,
      'Sell4': instance.sell4,
      'Sell5': instance.sell5,
      'Sell6': instance.sell6,
      'Sell7': instance.sell7,
      'Sell8': instance.sell8,
      'Sell9': instance.sell9,
      'Sell10': instance.sell10,
      'AskQty': instance.askQty,
      'AskPrice': instance.askPrice,
      'AskTime': instance.askTime,
      'AskSign': instance.askSign,
      'MarketOrderBuyQty': instance.marketOrderBuyQty,
      'Buy1': instance.buy1,
      'Buy2': instance.buy2,
      'Buy3': instance.buy3,
      'Buy4': instance.buy4,
      'Buy5': instance.buy5,
      'Buy6': instance.buy6,
      'Buy7': instance.buy7,
      'Buy8': instance.buy8,
      'Buy9': instance.buy9,
      'Buy10': instance.buy10,
      'OverSellQty': instance.overSellQty,
      'UnderBuyQty': instance.underBuyQty,
      'TotalMarketValue': instance.totalMarketValue,
      'ClearingPrice': instance.clearingPrice,
      'IV': instance.iv,
      'Gamma': instance.gamma,
      'Theta': instance.theta,
      'Vega': instance.vega,
      'Delta': instance.delta,
      'SecurityType': instance.securityType,
    };
