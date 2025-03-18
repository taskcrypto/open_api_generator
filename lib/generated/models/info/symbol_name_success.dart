// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol_name_success.freezed.dart';
part 'symbol_name_success.g.dart';

@freezed
class SymbolNameSuccess with _$SymbolNameSuccess {
  const factory SymbolNameSuccess({
    @JsonKey(name: 'Symbol')
    required String? symbol,
    @JsonKey(name: 'SymbolName')
    required String? symbolName,
  }) = _SymbolNameSuccess;

  factory SymbolNameSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolNameSuccessFromJson(json);
}
