// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbytradevalueresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingByTradeValueResponse _$RankingByTradeValueResponseFromJson(
        Map<String, dynamic> json) =>
    RankingByTradeValueResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingByTradeValueResponseToJson(
        RankingByTradeValueResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
