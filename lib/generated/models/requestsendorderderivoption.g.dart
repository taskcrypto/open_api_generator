// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestsendorderderivoption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestSendOrderDerivOption _$RequestSendOrderDerivOptionFromJson(
        Map<String, dynamic> json) =>
    RequestSendOrderDerivOption(
      Symbol: json['Symbol'] as String?,
      Exchange: (json['Exchange'] as num?)?.toInt(),
      TradeType: (json['TradeType'] as num?)?.toInt(),
      TimeInForce: (json['TimeInForce'] as num?)?.toInt(),
      Side: json['Side'] as String?,
      Qty: (json['Qty'] as num?)?.toInt(),
      ClosePositionOrder: (json['ClosePositionOrder'] as num?)?.toInt(),
      ClosePositions: json['ClosePositions'] as List<dynamic>?,
      FrontOrderType: (json['FrontOrderType'] as num?)?.toInt(),
      Price: (json['Price'] as num?)?.toDouble(),
      ExpireDay: (json['ExpireDay'] as num?)?.toInt(),
      ReverseLimitOrder: json['ReverseLimitOrder'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RequestSendOrderDerivOptionToJson(
        RequestSendOrderDerivOption instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'Exchange': instance.Exchange,
      'TradeType': instance.TradeType,
      'TimeInForce': instance.TimeInForce,
      'Side': instance.Side,
      'Qty': instance.Qty,
      'ClosePositionOrder': instance.ClosePositionOrder,
      'ClosePositions': instance.ClosePositions,
      'FrontOrderType': instance.FrontOrderType,
      'Price': instance.Price,
      'ExpireDay': instance.ExpireDay,
      'ReverseLimitOrder': instance.ReverseLimitOrder,
    };
