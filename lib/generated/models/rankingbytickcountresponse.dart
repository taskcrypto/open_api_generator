// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingbytickcountresponse.g.dart';

@JsonSerializable()
class RankingByTickCountResponse {
  RankingByTickCountResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingByTickCountResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTickCountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingByTickCountResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
