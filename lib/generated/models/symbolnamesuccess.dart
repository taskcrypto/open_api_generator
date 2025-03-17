// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'symbolnamesuccess.g.dart';

@JsonSerializable()
class SymbolNameSuccess {
  SymbolNameSuccess({
    this.Symbol,
    this.SymbolName,
  });

  factory SymbolNameSuccess.fromJson(Map<String, dynamic> json) =>
      _$SymbolNameSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$SymbolNameSuccessToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'SymbolName')
  final String? SymbolName;
}
