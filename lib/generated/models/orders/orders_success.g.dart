// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersSuccessImpl _$$OrdersSuccessImplFromJson(Map<String, dynamic> json) =>
    _$OrdersSuccessImpl(
      id: json['ID'] as String?,
      state: (json['State'] as num?)?.toInt(),
      orderState: (json['OrderState'] as num?)?.toInt(),
      ordType: (json['OrdType'] as num?)?.toInt(),
      recvTime: json['RecvTime'] as String?,
      symbol: json['Symbol'] as String?,
      symbolName: json['SymbolName'] as String?,
      exchange: (json['Exchange'] as num?)?.toInt(),
      exchangeName: json['ExchangeName'] as String?,
      timeInForce: (json['TimeInForce'] as num?)?.toInt(),
      price: (json['Price'] as num?)?.toDouble(),
      orderQty: (json['OrderQty'] as num?)?.toDouble(),
      cumQty: (json['CumQty'] as num?)?.toDouble(),
      side: json['Side'] as String?,
      cashMargin: (json['CashMargin'] as num?)?.toInt(),
      accountType: (json['AccountType'] as num?)?.toInt(),
      delivType: (json['DelivType'] as num?)?.toInt(),
      expireDay: (json['ExpireDay'] as num?)?.toInt(),
      marginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      marginPremium: (json['MarginPremium'] as num?)?.toDouble(),
      details: (json['Details'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$OrdersSuccessImplToJson(_$OrdersSuccessImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'State': instance.state,
      'OrderState': instance.orderState,
      'OrdType': instance.ordType,
      'RecvTime': instance.recvTime,
      'Symbol': instance.symbol,
      'SymbolName': instance.symbolName,
      'Exchange': instance.exchange,
      'ExchangeName': instance.exchangeName,
      'TimeInForce': instance.timeInForce,
      'Price': instance.price,
      'OrderQty': instance.orderQty,
      'CumQty': instance.cumQty,
      'Side': instance.side,
      'CashMargin': instance.cashMargin,
      'AccountType': instance.accountType,
      'DelivType': instance.delivType,
      'ExpireDay': instance.expireDay,
      'MarginTradeType': instance.marginTradeType,
      'MarginPremium': instance.marginPremium,
      'Details': instance.details,
    };
