// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbymarginresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingByMarginResponse _$RankingByMarginResponseFromJson(
        Map<String, dynamic> json) =>
    RankingByMarginResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingByMarginResponseToJson(
        RankingByMarginResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
