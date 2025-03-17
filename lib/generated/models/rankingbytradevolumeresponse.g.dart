// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbytradevolumeresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingByTradeVolumeResponse _$RankingByTradeVolumeResponseFromJson(
        Map<String, dynamic> json) =>
    RankingByTradeVolumeResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingByTradeVolumeResponseToJson(
        RankingByTradeVolumeResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
