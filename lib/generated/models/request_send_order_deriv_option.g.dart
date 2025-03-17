// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_send_order_deriv_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSendOrderDerivOptionImpl _$$RequestSendOrderDerivOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSendOrderDerivOptionImpl(
      symbol: json['Symbol'] as String?,
      exchange: (json['Exchange'] as num?)?.toInt(),
      tradeType: (json['TradeType'] as num?)?.toInt(),
      timeInForce: (json['TimeInForce'] as num?)?.toInt(),
      side: json['Side'] as String?,
      qty: (json['Qty'] as num?)?.toInt(),
      closePositionOrder: (json['ClosePositionOrder'] as num?)?.toInt(),
      closePositions: json['ClosePositions'] as List<dynamic>?,
      frontOrderType: (json['FrontOrderType'] as num?)?.toInt(),
      price: (json['Price'] as num?)?.toDouble(),
      expireDay: (json['ExpireDay'] as num?)?.toInt(),
      reverseLimitOrder: json['ReverseLimitOrder'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RequestSendOrderDerivOptionImplToJson(
        _$RequestSendOrderDerivOptionImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'Exchange': instance.exchange,
      'TradeType': instance.tradeType,
      'TimeInForce': instance.timeInForce,
      'Side': instance.side,
      'Qty': instance.qty,
      'ClosePositionOrder': instance.closePositionOrder,
      'ClosePositions': instance.closePositions,
      'FrontOrderType': instance.frontOrderType,
      'Price': instance.price,
      'ExpireDay': instance.expireDay,
      'ReverseLimitOrder': instance.reverseLimitOrder,
    };
