// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderSuccessImpl _$$OrderSuccessImplFromJson(Map<String, dynamic> json) =>
    _$OrderSuccessImpl(
      result: (json['Result'] as num?)?.toInt(),
      orderId: json['OrderId'] as String?,
    );

Map<String, dynamic> _$$OrderSuccessImplToJson(_$OrderSuccessImpl instance) =>
    <String, dynamic>{
      'Result': instance.result,
      'OrderId': instance.orderId,
    };
