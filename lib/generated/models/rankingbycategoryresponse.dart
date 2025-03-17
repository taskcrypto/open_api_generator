// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingbycategoryresponse.g.dart';

@JsonSerializable()
class RankingByCategoryResponse {
  RankingByCategoryResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingByCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingByCategoryResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
