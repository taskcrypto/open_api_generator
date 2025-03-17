// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'apisoftlimitresponse.g.dart';

@JsonSerializable()
class ApiSoftLimitResponse {
  ApiSoftLimitResponse({
    this.Stock,
    this.Margin,
    this.Future,
    this.FutureMini,
    this.FutureMicro,
    this.Option,
    this.MiniOption,
    this.KabuSVersion,
  });

  factory ApiSoftLimitResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiSoftLimitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiSoftLimitResponseToJson(this);

  @JsonKey(name: 'Stock')
  final double? Stock;
  @JsonKey(name: 'Margin')
  final double? Margin;
  @JsonKey(name: 'Future')
  final double? Future;
  @JsonKey(name: 'FutureMini')
  final double? FutureMini;
  @JsonKey(name: 'FutureMicro')
  final double? FutureMicro;
  @JsonKey(name: 'Option')
  final double? Option;
  @JsonKey(name: 'MiniOption')
  final double? MiniOption;
  @JsonKey(name: 'KabuSVersion')
  final String? KabuSVersion;
}
