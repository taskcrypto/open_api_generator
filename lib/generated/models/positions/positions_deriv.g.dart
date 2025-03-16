// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positions_deriv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionsDerivImpl _$$PositionsDerivImplFromJson(Map<String, dynamic> json) =>
    _$PositionsDerivImpl(
      holdId: json['HoldID'] as String?,
      qty: (json['Qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PositionsDerivImplToJson(
        _$PositionsDerivImpl instance) =>
    <String, dynamic>{
      'HoldID': instance.holdId,
      'Qty': instance.qty,
    };
