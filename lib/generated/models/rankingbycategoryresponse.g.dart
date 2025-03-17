// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbycategoryresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingByCategoryResponseImpl _$$RankingByCategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingByCategoryResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingByCategoryResponseImplToJson(
        _$RankingByCategoryResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
