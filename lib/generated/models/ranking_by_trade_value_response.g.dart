// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_by_trade_value_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingByTradeValueResponseImpl _$$RankingByTradeValueResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingByTradeValueResponseImpl(
      type: json['Type'] as String?,
      exchangeDivision: json['ExchangeDivision'] as String?,
      ranking: (json['Ranking'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$RankingByTradeValueResponseImplToJson(
        _$RankingByTradeValueResponseImpl instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'ExchangeDivision': instance.exchangeDivision,
      'Ranking': instance.ranking,
    };
