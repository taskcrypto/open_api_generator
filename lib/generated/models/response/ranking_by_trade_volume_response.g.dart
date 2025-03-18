// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_by_trade_volume_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingByTradeVolumeResponseImpl _$$RankingByTradeVolumeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingByTradeVolumeResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingByTradeVolumeResponseImplToJson(
        _$RankingByTradeVolumeResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
