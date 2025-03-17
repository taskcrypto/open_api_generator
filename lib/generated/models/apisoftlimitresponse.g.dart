// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apisoftlimitresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSoftLimitResponse _$ApiSoftLimitResponseFromJson(
        Map<String, dynamic> json) =>
    ApiSoftLimitResponse(
      Stock: (json['Stock'] as num?)?.toDouble(),
      Margin: (json['Margin'] as num?)?.toDouble(),
      Future: (json['Future'] as num?)?.toDouble(),
      FutureMini: (json['FutureMini'] as num?)?.toDouble(),
      FutureMicro: (json['FutureMicro'] as num?)?.toDouble(),
      Option: (json['Option'] as num?)?.toDouble(),
      MiniOption: (json['MiniOption'] as num?)?.toDouble(),
      KabuSVersion: json['KabuSVersion'] as String?,
    );

Map<String, dynamic> _$ApiSoftLimitResponseToJson(
        ApiSoftLimitResponse instance) =>
    <String, dynamic>{
      'Stock': instance.Stock,
      'Margin': instance.Margin,
      'Future': instance.Future,
      'FutureMini': instance.FutureMini,
      'FutureMicro': instance.FutureMicro,
      'Option': instance.Option,
      'MiniOption': instance.MiniOption,
      'KabuSVersion': instance.KabuSVersion,
    };
