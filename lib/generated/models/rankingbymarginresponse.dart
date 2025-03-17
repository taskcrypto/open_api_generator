// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rankingbymarginresponse.freezed.dart';
part 'rankingbymarginresponse.g.dart';

@freezed
class RankingByMarginResponse with _$RankingByMarginResponse {
  const factory RankingByMarginResponse({
    @JsonKey(name: 'Type')
    String? type,
    @JsonKey(name: 'ExchangeDivision')
    String? exchangeDivision,
    @JsonKey(name: 'Ranking')
    List<Map<String, dynamic>>? ranking,
  }) = _RankingByMarginResponse;

  factory RankingByMarginResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByMarginResponseFromJson(json);
}
