// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_soft_limit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiSoftLimitResponseImpl _$$ApiSoftLimitResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiSoftLimitResponseImpl(
      stock: (json['Stock'] as num?)?.toDouble(),
      margin: (json['Margin'] as num?)?.toDouble(),
      future: (json['Future'] as num?)?.toDouble(),
      futureMini: (json['FutureMini'] as num?)?.toDouble(),
      futureMicro: (json['FutureMicro'] as num?)?.toDouble(),
      option: (json['Option'] as num?)?.toDouble(),
      miniOption: (json['MiniOption'] as num?)?.toDouble(),
      kabuSVersion: json['KabuSVersion'] as String?,
    );

Map<String, dynamic> _$$ApiSoftLimitResponseImplToJson(
        _$ApiSoftLimitResponseImpl instance) =>
    <String, dynamic>{
      'Stock': instance.stock,
      'Margin': instance.margin,
      'Future': instance.future,
      'FutureMini': instance.futureMini,
      'FutureMicro': instance.futureMicro,
      'Option': instance.option,
      'MiniOption': instance.miniOption,
      'KabuSVersion': instance.kabuSVersion,
    };
