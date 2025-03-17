// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingdefaultresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingDefaultResponse _$RankingDefaultResponseFromJson(
        Map<String, dynamic> json) =>
    RankingDefaultResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingDefaultResponseToJson(
        RankingDefaultResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
