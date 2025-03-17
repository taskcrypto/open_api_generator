// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingbymarginresponse.g.dart';

@JsonSerializable()
class RankingByMarginResponse {
  RankingByMarginResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingByMarginResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByMarginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingByMarginResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
