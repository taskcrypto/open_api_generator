// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rankingbytradevolumeresponse.freezed.dart';
part 'rankingbytradevolumeresponse.g.dart';

@freezed
class RankingByTradeVolumeResponse with _$RankingByTradeVolumeResponse {
  const factory RankingByTradeVolumeResponse({
    @JsonKey(name: 'Type')
    String? type,
    @JsonKey(name: 'ExchangeDivision')
    String? exchangeDivision,
    @JsonKey(name: 'Ranking')
    List<Map<String, dynamic>>? ranking,
  }) = _RankingByTradeVolumeResponse;

  factory RankingByTradeVolumeResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeVolumeResponseFromJson(json);
}
