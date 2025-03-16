// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_by_category_response.freezed.dart';
part 'ranking_by_category_response.g.dart';

@freezed
class RankingByCategoryResponse with _$RankingByCategoryResponse {
  const factory RankingByCategoryResponse({
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'ExchangeDivision') required String exchangeDivision,
    @JsonKey(name: 'Ranking') required List<Map<String, dynamic>> ranking,
  }) = _RankingByCategoryResponse;

  factory RankingByCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByCategoryResponseFromJson(json);
}
