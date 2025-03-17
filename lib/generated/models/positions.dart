// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions.freezed.dart';
part 'positions.g.dart';

@freezed
class Positions with _$Positions {
  const factory Positions({
    @JsonKey(name: 'HoldID')
    String? holdID,
    @JsonKey(name: 'Qty')
    int? qty,
  }) = _Positions;

  factory Positions.fromJson(Map<String, dynamic> json) =>
      _$PositionsFromJson(json);
}
