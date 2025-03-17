// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordersuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderSuccessImpl _$$OrderSuccessImplFromJson(Map<String, dynamic> json) =>
    _$OrderSuccessImpl(
      result: (json['Result'] as num?)?.toInt(),
      orderID: json['OrderId'] as String?,
    );

Map<String, dynamic> _$$OrderSuccessImplToJson(_$OrderSuccessImpl instance) =>
    <String, dynamic>{
      'Result': instance.result,
      'OrderId': instance.orderID,
    };
