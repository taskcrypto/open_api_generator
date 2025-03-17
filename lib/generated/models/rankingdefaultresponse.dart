// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingdefaultresponse.g.dart';

@JsonSerializable()
class RankingDefaultResponse {
  RankingDefaultResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingDefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingDefaultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingDefaultResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
