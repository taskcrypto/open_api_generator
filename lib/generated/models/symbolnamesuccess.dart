// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbolnamesuccess.freezed.dart';
part 'symbolnamesuccess.g.dart';

@freezed
class SymbolNameSuccess with _$SymbolNameSuccess {
  const factory SymbolNameSuccess({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'SymbolName')
    String? symbolName,
  }) = _SymbolNameSuccess;

  factory SymbolNameSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolNameSuccessFromJson(json);
}
