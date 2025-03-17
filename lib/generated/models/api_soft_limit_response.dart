// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_soft_limit_response.freezed.dart';
part 'api_soft_limit_response.g.dart';

@freezed
class ApiSoftLimitResponse with _$ApiSoftLimitResponse {
  const factory ApiSoftLimitResponse({
    @JsonKey(name: 'Stock')
    double? stock,
    @JsonKey(name: 'Margin')
    double? margin,
    @JsonKey(name: 'Future')
    double? future,
    @JsonKey(name: 'FutureMini')
    double? futureMini,
    @JsonKey(name: 'FutureMicro')
    double? futureMicro,
    @JsonKey(name: 'Option')
    double? option,
    @JsonKey(name: 'MiniOption')
    double? miniOption,
    @JsonKey(name: 'KabuSVersion')
    String? kabuSVersion,
  }) = _ApiSoftLimitResponse;

  factory ApiSoftLimitResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiSoftLimitResponseFromJson(json);
}
