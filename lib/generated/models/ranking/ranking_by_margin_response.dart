// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_by_margin_response.freezed.dart';
part 'ranking_by_margin_response.g.dart';

@freezed
class RankingByMarginResponse with _$RankingByMarginResponse {
  const factory RankingByMarginResponse({
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
    @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking,
  }) = _RankingByMarginResponse;

  factory RankingByMarginResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByMarginResponseFromJson(json);
}
