// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_send_order_deriv_future.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSendOrderDerivFutureImpl _$$RequestSendOrderDerivFutureImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSendOrderDerivFutureImpl(
      symbol: json['Symbol'] as String,
      exchange: (json['Exchange'] as num).toInt(),
      tradeType: (json['TradeType'] as num).toInt(),
      timeInForce: (json['TimeInForce'] as num).toInt(),
      side: json['Side'] as String,
      qty: (json['Qty'] as num).toInt(),
      closePositionOrder: (json['ClosePositionOrder'] as num?)?.toInt(),
      closePositions: (json['ClosePositions'] as List<dynamic>?)
          ?.map((e) => PositionsDeriv.fromJson(e as Map<String, dynamic>))
          .toList(),
      frontOrderType: (json['FrontOrderType'] as num).toInt(),
      price: (json['Price'] as num).toDouble(),
      expireDay: (json['ExpireDay'] as num).toInt(),
      reverseLimitOrder: json['ReverseLimitOrder'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RequestSendOrderDerivFutureImplToJson(
        _$RequestSendOrderDerivFutureImpl instance) =>
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
