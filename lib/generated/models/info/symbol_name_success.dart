// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol_name_success.freezed.dart';
part 'symbol_name_success.g.dart';

@freezed
class SymbolNameSuccess with _$SymbolNameSuccess {
  const factory SymbolNameSuccess({
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'SymbolName') String? symbolName,
  }) = _SymbolNameSuccess;

  factory SymbolNameSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolNameSuccessFromJson(json);
}
