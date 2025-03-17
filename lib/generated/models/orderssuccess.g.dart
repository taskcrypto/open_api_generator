// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderssuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersSuccess _$OrdersSuccessFromJson(Map<String, dynamic> json) =>
    OrdersSuccess(
      ID: json['ID'] as String?,
      State: (json['State'] as num?)?.toInt(),
      OrderState: (json['OrderState'] as num?)?.toInt(),
      OrdType: (json['OrdType'] as num?)?.toInt(),
      RecvTime: json['RecvTime'] as String?,
      Symbol: json['Symbol'] as String?,
      SymbolName: json['SymbolName'] as String?,
      Exchange: (json['Exchange'] as num?)?.toInt(),
      ExchangeName: json['ExchangeName'] as String?,
      TimeInForce: (json['TimeInForce'] as num?)?.toInt(),
      Price: (json['Price'] as num?)?.toDouble(),
      OrderQty: (json['OrderQty'] as num?)?.toDouble(),
      CumQty: (json['CumQty'] as num?)?.toDouble(),
      Side: json['Side'] as String?,
      CashMargin: (json['CashMargin'] as num?)?.toInt(),
      AccountType: (json['AccountType'] as num?)?.toInt(),
      DelivType: (json['DelivType'] as num?)?.toInt(),
      ExpireDay: (json['ExpireDay'] as num?)?.toInt(),
      MarginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      MarginPremium: (json['MarginPremium'] as num?)?.toDouble(),
      Details: json['Details'] as List<dynamic>?,
    );

Map<String, dynamic> _$OrdersSuccessToJson(OrdersSuccess instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'State': instance.State,
      'OrderState': instance.OrderState,
      'OrdType': instance.OrdType,
      'RecvTime': instance.RecvTime,
      'Symbol': instance.Symbol,
      'SymbolName': instance.SymbolName,
      'Exchange': instance.Exchange,
      'ExchangeName': instance.ExchangeName,
      'TimeInForce': instance.TimeInForce,
      'Price': instance.Price,
      'OrderQty': instance.OrderQty,
      'CumQty': instance.CumQty,
      'Side': instance.Side,
      'CashMargin': instance.CashMargin,
      'AccountType': instance.AccountType,
      'DelivType': instance.DelivType,
      'ExpireDay': instance.ExpireDay,
      'MarginTradeType': instance.MarginTradeType,
      'MarginPremium': instance.MarginPremium,
      'Details': instance.Details,
    };
