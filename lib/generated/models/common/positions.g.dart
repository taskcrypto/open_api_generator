// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionsImpl _$$PositionsImplFromJson(Map<String, dynamic> json) =>
    _$PositionsImpl(
      holdID: json['HoldID'] as String?,
      qty: (json['Qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PositionsImplToJson(_$PositionsImpl instance) =>
    <String, dynamic>{
      'HoldID': instance.holdID,
      'Qty': instance.qty,
    };
