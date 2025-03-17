// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'positionsderiv.g.dart';

@JsonSerializable()
class PositionsDeriv {
  PositionsDeriv({
    this.HoldID,
    this.Qty,
  });

  factory PositionsDeriv.fromJson(Map<String, dynamic> json) =>
      _$PositionsDerivFromJson(json);

  Map<String, dynamic> toJson() => _$PositionsDerivToJson(this);

  @JsonKey(name: 'HoldID')
  final String? HoldID;
  @JsonKey(name: 'Qty')
  final int? Qty;
}
