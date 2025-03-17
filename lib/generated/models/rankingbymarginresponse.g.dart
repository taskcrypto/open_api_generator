// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbymarginresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingByMarginResponseImpl _$$RankingByMarginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingByMarginResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingByMarginResponseImplToJson(
        _$RankingByMarginResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
