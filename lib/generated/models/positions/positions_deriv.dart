// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions_deriv.freezed.dart';
part 'positions_deriv.g.dart';

@freezed
class PositionsDeriv with _$PositionsDeriv {
  const factory PositionsDeriv({
    @JsonKey(name: 'HoldID') String? holdId,
    @JsonKey(name: 'Qty') int? qty,
  }) = _PositionsDeriv;

  factory PositionsDeriv.fromJson(Map<String, dynamic> json) =>
      _$PositionsDerivFromJson(json);
}
