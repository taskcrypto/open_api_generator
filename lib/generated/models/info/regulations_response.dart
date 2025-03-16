// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'regulations_response.freezed.dart';
part 'regulations_response.g.dart';

@freezed
class RegulationsResponse with _$RegulationsResponse {
  const factory RegulationsResponse({
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'RegulationsInfo')
    List<Map<String, dynamic>>? regulationsInfo,
  }) = _RegulationsResponse;

  factory RegulationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RegulationsResponseFromJson(json);
}
