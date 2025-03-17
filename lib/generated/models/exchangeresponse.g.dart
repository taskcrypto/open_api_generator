// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchangeresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeResponse _$ExchangeResponseFromJson(Map<String, dynamic> json) =>
    ExchangeResponse(
      Symbol: json['Symbol'] as String?,
      BidPrice: (json['BidPrice'] as num?)?.toDouble(),
      Spread: (json['Spread'] as num?)?.toDouble(),
      AskPrice: (json['AskPrice'] as num?)?.toDouble(),
      Change: (json['Change'] as num?)?.toDouble(),
      Time: json['Time'] as String?,
    );

Map<String, dynamic> _$ExchangeResponseToJson(ExchangeResponse instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'BidPrice': instance.BidPrice,
      'Spread': instance.Spread,
      'AskPrice': instance.AskPrice,
      'Change': instance.Change,
      'Time': instance.Time,
    };
