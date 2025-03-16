// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_by_trade_volume_response.freezed.dart';
part 'ranking_by_trade_volume_response.g.dart';

@freezed
class RankingByTradeVolumeResponse with _$RankingByTradeVolumeResponse {
  const factory RankingByTradeVolumeResponse({
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'ExchangeDivision') required String exchangeDivision,
    @JsonKey(name: 'Ranking') required List<Map<String, dynamic>> ranking,
  }) = _RankingByTradeVolumeResponse;

  factory RankingByTradeVolumeResponse.fromJson(Map<String, dynamic> json) =>
      _$RankingByTradeVolumeResponseFromJson(json);
}
