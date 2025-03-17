// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positionsderiv.freezed.dart';
part 'positionsderiv.g.dart';

@freezed
class PositionsDeriv with _$PositionsDeriv {
  const factory PositionsDeriv({
    @JsonKey(name: 'HoldID')
    String? holdID,
    @JsonKey(name: 'Qty')
    int? qty,
  }) = _PositionsDeriv;

  factory PositionsDeriv.fromJson(Map<String, dynamic> json) =>
      _$PositionsDerivFromJson(json);
}
