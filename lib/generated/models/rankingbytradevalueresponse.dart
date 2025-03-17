// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingbytradevalueresponse.g.dart';

@JsonSerializable()
class RankingByTradeValueResponse {
  RankingByTradeValueResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingByTradeValueResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeValueResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingByTradeValueResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
