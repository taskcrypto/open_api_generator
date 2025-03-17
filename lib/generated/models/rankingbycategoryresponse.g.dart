// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankingbycategoryresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingByCategoryResponse _$RankingByCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    RankingByCategoryResponse(
      Type: json['Type'] as String?,
      ExchangeDivision: json['ExchangeDivision'] as String?,
      Ranking: json['Ranking'] as List<dynamic>?,
    );

Map<String, dynamic> _$RankingByCategoryResponseToJson(
        RankingByCategoryResponse instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'ExchangeDivision': instance.ExchangeDivision,
      'Ranking': instance.Ranking,
    };
