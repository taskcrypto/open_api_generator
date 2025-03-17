// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'primaryexchangeresponse.g.dart';

@JsonSerializable()
class PrimaryExchangeResponse {
  PrimaryExchangeResponse({
    this.Symbol,
    this.PrimaryExchange,
  });

  factory PrimaryExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$PrimaryExchangeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PrimaryExchangeResponseToJson(this);

  @JsonKey(name: 'Symbol')
  final String? Symbol;
  @JsonKey(name: 'PrimaryExchange')
  final int? PrimaryExchange;
}
