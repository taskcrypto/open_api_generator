// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbytickcountresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingByTickCountResponseImpl _$$RankingByTickCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingByTickCountResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingByTickCountResponseImplToJson(
        _$RankingByTickCountResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
