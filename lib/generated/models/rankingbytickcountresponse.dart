// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rankingbytickcountresponse.freezed.dart';
part 'rankingbytickcountresponse.g.dart';

@freezed
class RankingByTickCountResponse with _$RankingByTickCountResponse {
  const factory RankingByTickCountResponse({
    @JsonKey(name: 'Type')
    String? type,
    @JsonKey(name: 'ExchangeDivision')
    String? exchangeDivision,
    @JsonKey(name: 'Ranking')
    List<Map<String, dynamic>>? ranking,
  }) = _RankingByTickCountResponse;

  factory RankingByTickCountResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTickCountResponseFromJson(json);
}
