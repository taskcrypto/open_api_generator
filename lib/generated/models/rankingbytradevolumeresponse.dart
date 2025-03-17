// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'rankingbytradevolumeresponse.g.dart';

@JsonSerializable()
class RankingByTradeVolumeResponse {
  RankingByTradeVolumeResponse({
    this.Type,
    this.ExchangeDivision,
    this.Ranking,
  });

  factory RankingByTradeVolumeResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeVolumeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RankingByTradeVolumeResponseToJson(this);

  @JsonKey(name: 'Type')
  final String? Type;
  @JsonKey(name: 'ExchangeDivision')
  final String? ExchangeDivision;
  @JsonKey(name: 'Ranking')
  final List<dynamic>? Ranking;
}
