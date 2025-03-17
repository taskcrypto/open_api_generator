// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positionsderiv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PositionsDeriv _$PositionsDerivFromJson(Map<String, dynamic> json) =>
    PositionsDeriv(
      HoldID: json['HoldID'] as String?,
      Qty: (json['Qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PositionsDerivToJson(PositionsDeriv instance) =>
    <String, dynamic>{
      'HoldID': instance.HoldID,
      'Qty': instance.Qty,
    };
