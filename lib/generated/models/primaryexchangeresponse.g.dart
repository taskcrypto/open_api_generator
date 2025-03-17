// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primaryexchangeresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrimaryExchangeResponse _$PrimaryExchangeResponseFromJson(
        Map<String, dynamic> json) =>
    PrimaryExchangeResponse(
      Symbol: json['Symbol'] as String?,
      PrimaryExchange: (json['PrimaryExchange'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PrimaryExchangeResponseToJson(
        PrimaryExchangeResponse instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'PrimaryExchange': instance.PrimaryExchange,
    };
