// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regulations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegulationsResponseImpl _$$RegulationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegulationsResponseImpl(
      symbol: json['Symbol'] as String?,
      regulationsInfo: (json['RegulationsInfo'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RegulationsResponseImplToJson(
        _$RegulationsResponseImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'RegulationsInfo': instance.regulationsInfo,
    };
