// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Positions _$PositionsFromJson(Map<String, dynamic> json) => Positions(
      HoldID: json['HoldID'] as String?,
      Qty: (json['Qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PositionsToJson(Positions instance) => <String, dynamic>{
      'HoldID': instance.HoldID,
      'Qty': instance.Qty,
    };
