// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'positions.g.dart';

@JsonSerializable()
class Positions {
  Positions({
    this.HoldID,
    this.Qty,
  });

  factory Positions.fromJson(Map<String, dynamic> json) =>
      _$PositionsFromJson(json);

  Map<String, dynamic> toJson() => _$PositionsToJson(this);

  @JsonKey(name: 'HoldID')
  final String? HoldID;
  @JsonKey(name: 'Qty')
  final int? Qty;
}
