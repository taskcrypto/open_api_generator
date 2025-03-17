// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordersuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderSuccess _$OrderSuccessFromJson(Map<String, dynamic> json) => OrderSuccess(
      Result: (json['Result'] as num?)?.toInt(),
      OrderId: json['OrderId'] as String?,
    );

Map<String, dynamic> _$OrderSuccessToJson(OrderSuccess instance) =>
    <String, dynamic>{
      'Result': instance.Result,
      'OrderId': instance.OrderId,
    };
