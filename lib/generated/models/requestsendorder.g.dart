// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestsendorder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestSendOrder _$RequestSendOrderFromJson(Map<String, dynamic> json) =>
    RequestSendOrder(
      Symbol: json['Symbol'] as String?,
      Exchange: (json['Exchange'] as num?)?.toInt(),
      SecurityType: (json['SecurityType'] as num?)?.toInt(),
      Side: json['Side'] as String?,
      CashMargin: (json['CashMargin'] as num?)?.toInt(),
      MarginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      MarginPremiumUnit: (json['MarginPremiumUnit'] as num?)?.toDouble(),
      DelivType: (json['DelivType'] as num?)?.toInt(),
      FundType: json['FundType'] as String?,
      AccountType: (json['AccountType'] as num?)?.toInt(),
      Qty: (json['Qty'] as num?)?.toInt(),
      ClosePositionOrder: (json['ClosePositionOrder'] as num?)?.toInt(),
      ClosePositions: json['ClosePositions'] as List<dynamic>?,
      FrontOrderType: (json['FrontOrderType'] as num?)?.toInt(),
      Price: (json['Price'] as num?)?.toDouble(),
      ExpireDay: (json['ExpireDay'] as num?)?.toInt(),
      ReverseLimitOrder: json['ReverseLimitOrder'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RequestSendOrderToJson(RequestSendOrder instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'Exchange': instance.Exchange,
      'SecurityType': instance.SecurityType,
      'Side': instance.Side,
      'CashMargin': instance.CashMargin,
      'MarginTradeType': instance.MarginTradeType,
      'MarginPremiumUnit': instance.MarginPremiumUnit,
      'DelivType': instance.DelivType,
      'FundType': instance.FundType,
      'AccountType': instance.AccountType,
      'Qty': instance.Qty,
      'ClosePositionOrder': instance.ClosePositionOrder,
      'ClosePositions': instance.ClosePositions,
      'FrontOrderType': instance.FrontOrderType,
      'Price': instance.Price,
      'ExpireDay': instance.ExpireDay,
      'ReverseLimitOrder': instance.ReverseLimitOrder,
    };
