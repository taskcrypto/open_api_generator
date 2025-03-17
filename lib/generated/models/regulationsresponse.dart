// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'regulationsresponse.freezed.dart';
part 'regulationsresponse.g.dart';

@freezed
class RegulationsResponse with _$RegulationsResponse {
  const factory RegulationsResponse({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'RegulationsInfo')
    List<Map<String, dynamic>>? regulationsInfo,
  }) = _RegulationsResponse;

  factory RegulationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RegulationsResponseFromJson(json);
}
