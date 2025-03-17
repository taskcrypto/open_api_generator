// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rankingbycategoryresponse.freezed.dart';
part 'rankingbycategoryresponse.g.dart';

@freezed
class RankingByCategoryResponse with _$RankingByCategoryResponse {
  const factory RankingByCategoryResponse({
    @JsonKey(name: 'Type')
    String? type,
    @JsonKey(name: 'ExchangeDivision')
    String? exchangeDivision,
    @JsonKey(name: 'Ranking')
    List<Map<String, dynamic>>? ranking,
  }) = _RankingByCategoryResponse;

  factory RankingByCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByCategoryResponseFromJson(json);
}
