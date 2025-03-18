// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_exchange_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrimaryExchangeResponseImpl _$$PrimaryExchangeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimaryExchangeResponseImpl(
      symbol: json['Symbol'] as String?,
      primaryExchange: (json['PrimaryExchange'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PrimaryExchangeResponseImplToJson(
        _$PrimaryExchangeResponseImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'PrimaryExchange': instance.primaryExchange,
    };
