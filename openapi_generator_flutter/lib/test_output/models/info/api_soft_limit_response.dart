// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_soft_limit_response.freezed.dart';
part 'api_soft_limit_response.g.dart';

@freezed
class ApiSoftLimitResponse with _$ApiSoftLimitResponse {
  const factory ApiSoftLimitResponse({
    @JsonKey(name: 'Stock') required double stock,
    @JsonKey(name: 'Margin') required double margin,
    @JsonKey(name: 'Future') required double future,
    @JsonKey(name: 'FutureMini') required double futureMini,
    @JsonKey(name: 'FutureMicro') required double futureMicro,
    @JsonKey(name: 'Option') required double option,
    @JsonKey(name: 'MiniOption') required double miniOption,
    @JsonKey(name: 'KabuSVersion') required String kabuSVersion,
  }) = _ApiSoftLimitResponse;

  factory ApiSoftLimitResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiSoftLimitResponseFromJson(json);
}
