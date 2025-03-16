// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingDefaultResponseImpl _$$RankingDefaultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingDefaultResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingDefaultResponseImplToJson(
        _$RankingDefaultResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
