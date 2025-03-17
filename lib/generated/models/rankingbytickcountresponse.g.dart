// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbytickcountresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingByTickCountResponse _$RankingByTickCountResponseFromJson(
        Map<String, dynamic> json) =>
    RankingByTickCountResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingByTickCountResponseToJson(
        RankingByTickCountResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
