// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbolsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SymbolSuccess _$SymbolSuccessFromJson(Map<String, dynamic> json) =>
    SymbolSuccess(
      Symbol: json['Symbol'] as String?,
      SymbolName: json['SymbolName'] as String?,
      DisplayName: json['DisplayName'] as String?,
      Exchange: (json['Exchange'] as num?)?.toInt(),
      ExchangeName: json['ExchangeName'] as String?,
      BisCategory: json['BisCategory'] as String?,
      TotalMarketValue: (json['TotalMarketValue'] as num?)?.toDouble(),
      TotalStocks: (json['TotalStocks'] as num?)?.toDouble(),
      TradingUnit: (json['TradingUnit'] as num?)?.toDouble(),
      FiscalYearEndBasic: (json['FiscalYearEndBasic'] as num?)?.toInt(),
      PriceRangeGroup: json['PriceRangeGroup'] as String?,
      KCMarginBuy: json['KCMarginBuy'] as bool?,
      KCMarginSell: json['KCMarginSell'] as bool?,
      MarginBuy: json['MarginBuy'] as bool?,
      MarginSell: json['MarginSell'] as bool?,
      UpperLimit: (json['UpperLimit'] as num?)?.toDouble(),
      LowerLimit: (json['LowerLimit'] as num?)?.toDouble(),
      Underlyer: json['Underlyer'] as String?,
      DerivMonth: json['DerivMonth'] as String?,
      TradeStart: (json['TradeStart'] as num?)?.toInt(),
      TradeEnd: (json['TradeEnd'] as num?)?.toInt(),
      StrikePrice: (json['StrikePrice'] as num?)?.toDouble(),
      PutOrCall: (json['PutOrCall'] as num?)?.toInt(),
      ClearingPrice: (json['ClearingPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SymbolSuccessToJson(SymbolSuccess instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'SymbolName': instance.SymbolName,
      'DisplayName': instance.DisplayName,
      'Exchange': instance.Exchange,
      'ExchangeName': instance.ExchangeName,
      'BisCategory': instance.BisCategory,
      'TotalMarketValue': instance.TotalMarketValue,
      'TotalStocks': instance.TotalStocks,
      'TradingUnit': instance.TradingUnit,
      'FiscalYearEndBasic': instance.FiscalYearEndBasic,
      'PriceRangeGroup': instance.PriceRangeGroup,
      'KCMarginBuy': instance.KCMarginBuy,
      'KCMarginSell': instance.KCMarginSell,
      'MarginBuy': instance.MarginBuy,
      'MarginSell': instance.MarginSell,
      'UpperLimit': instance.UpperLimit,
      'LowerLimit': instance.LowerLimit,
      'Underlyer': instance.Underlyer,
      'DerivMonth': instance.DerivMonth,
      'TradeStart': instance.TradeStart,
      'TradeEnd': instance.TradeEnd,
      'StrikePrice': instance.StrikePrice,
      'PutOrCall': instance.PutOrCall,
      'ClearingPrice': instance.ClearingPrice,
    };
