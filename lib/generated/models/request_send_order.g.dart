// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_send_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSendOrderImpl _$$RequestSendOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSendOrderImpl(
      symbol: json['Symbol'] as String,
      exchange: (json['Exchange'] as num).toInt(),
      securityType: (json['SecurityType'] as num).toInt(),
      side: json['Side'] as String,
      cashMargin: (json['CashMargin'] as num).toInt(),
      marginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      marginPremiumUnit: (json['MarginPremiumUnit'] as num?)?.toDouble(),
      delivType: (json['DelivType'] as num).toInt(),
      fundType: json['FundType'] as String?,
      accountType: (json['AccountType'] as num).toInt(),
      qty: (json['Qty'] as num).toInt(),
      closePositionOrder: (json['ClosePositionOrder'] as num?)?.toInt(),
      closePositions: (json['ClosePositions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      frontOrderType: (json['FrontOrderType'] as num).toInt(),
      price: (json['Price'] as num).toDouble(),
      expireDay: (json['ExpireDay'] as num).toInt(),
      reverseLimitOrder: json['ReverseLimitOrder'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RequestSendOrderImplToJson(
        _$RequestSendOrderImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'Exchange': instance.exchange,
      'SecurityType': instance.securityType,
      'Side': instance.side,
      'CashMargin': instance.cashMargin,
      'MarginTradeType': instance.marginTradeType,
      'MarginPremiumUnit': instance.marginPremiumUnit,
      'DelivType': instance.delivType,
      'FundType': instance.fundType,
      'AccountType': instance.accountType,
      'Qty': instance.qty,
      'ClosePositionOrder': instance.closePositionOrder,
      'ClosePositions': instance.closePositions,
      'FrontOrderType': instance.frontOrderType,
      'Price': instance.price,
      'ExpireDay': instance.expireDay,
      'ReverseLimitOrder': instance.reverseLimitOrder,
    };
