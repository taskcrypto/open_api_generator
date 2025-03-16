// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymbolSuccessImpl _$$SymbolSuccessImplFromJson(Map<String, dynamic> json) =>
    _$SymbolSuccessImpl(
      symbol: json['Symbol'] as String?,
      symbolName: json['SymbolName'] as String?,
      displayName: json['DisplayName'] as String?,
      exchange: (json['Exchange'] as num?)?.toInt(),
      exchangeName: json['ExchangeName'] as String?,
      bisCategory: json['BisCategory'] as String?,
      totalMarketValue: (json['TotalMarketValue'] as num?)?.toDouble(),
      totalStocks: (json['TotalStocks'] as num?)?.toDouble(),
      tradingUnit: (json['TradingUnit'] as num?)?.toDouble(),
      fiscalYearEndBasic: (json['FiscalYearEndBasic'] as num?)?.toInt(),
      priceRangeGroup: json['PriceRangeGroup'] as String?,
      kcMarginBuy: json['KCMarginBuy'] as bool?,
      kcMarginSell: json['KCMarginSell'] as bool?,
      marginBuy: json['MarginBuy'] as bool?,
      marginSell: json['MarginSell'] as bool?,
      upperLimit: (json['UpperLimit'] as num?)?.toDouble(),
      lowerLimit: (json['LowerLimit'] as num?)?.toDouble(),
      underlyer: json['Underlyer'] as String?,
      derivMonth: json['DerivMonth'] as String?,
      tradeStart: (json['TradeStart'] as num?)?.toInt(),
      tradeEnd: (json['TradeEnd'] as num?)?.toInt(),
      strikePrice: (json['StrikePrice'] as num?)?.toDouble(),
      putOrCall: (json['PutOrCall'] as num?)?.toInt(),
      clearingPrice: (json['ClearingPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SymbolSuccessImplToJson(_$SymbolSuccessImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'SymbolName': instance.symbolName,
      'DisplayName': instance.displayName,
      'Exchange': instance.exchange,
      'ExchangeName': instance.exchangeName,
      'BisCategory': instance.bisCategory,
      'TotalMarketValue': instance.totalMarketValue,
      'TotalStocks': instance.totalStocks,
      'TradingUnit': instance.tradingUnit,
      'FiscalYearEndBasic': instance.fiscalYearEndBasic,
      'PriceRangeGroup': instance.priceRangeGroup,
      'KCMarginBuy': instance.kcMarginBuy,
      'KCMarginSell': instance.kcMarginSell,
      'MarginBuy': instance.marginBuy,
      'MarginSell': instance.marginSell,
      'UpperLimit': instance.upperLimit,
      'LowerLimit': instance.lowerLimit,
      'Underlyer': instance.underlyer,
      'DerivMonth': instance.derivMonth,
      'TradeStart': instance.tradeStart,
      'TradeEnd': instance.tradeEnd,
      'StrikePrice': instance.strikePrice,
      'PutOrCall': instance.putOrCall,
      'ClearingPrice': instance.clearingPrice,
    };
