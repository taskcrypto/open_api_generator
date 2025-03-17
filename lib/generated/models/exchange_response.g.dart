// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeResponseImpl _$$ExchangeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeResponseImpl(
      symbol: json['Symbol'] as String?,
      bidPrice: (json['BidPrice'] as num?)?.toDouble(),
      spread: (json['Spread'] as num?)?.toDouble(),
      askPrice: (json['AskPrice'] as num?)?.toDouble(),
      change: (json['Change'] as num?)?.toDouble(),
      time: json['Time'] as String?,
    );

Map<String, dynamic> _$$ExchangeResponseImplToJson(
        _$ExchangeResponseImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'BidPrice': instance.bidPrice,
      'Spread': instance.spread,
      'AskPrice': instance.askPrice,
      'Change': instance.change,
      'Time': instance.time,
    };
