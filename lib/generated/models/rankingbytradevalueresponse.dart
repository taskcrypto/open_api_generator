// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rankingbytradevalueresponse.freezed.dart';
part 'rankingbytradevalueresponse.g.dart';

@freezed
class RankingByTradeValueResponse with _$RankingByTradeValueResponse {
  const factory RankingByTradeValueResponse({
    @JsonKey(name: 'Type')
    String? type,
    @JsonKey(name: 'ExchangeDivision')
    String? exchangeDivision,
    @JsonKey(name: 'Ranking')
    List<Map<String, dynamic>>? ranking,
  }) = _RankingByTradeValueResponse;

  factory RankingByTradeValueResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeValueResponseFromJson(json);
}
