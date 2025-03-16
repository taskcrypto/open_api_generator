// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions.freezed.dart';
part 'positions.g.dart';

@freezed
class Positions with _$Positions {
  const factory Positions({
    @JsonKey(name: 'HoldID') required String holdId,
    @JsonKey(name: 'Qty') required int qty,
  }) = _Positions;

  factory Positions.fromJson(Map<String, dynamic> json) =>
      _$PositionsFromJson(json);
}
