// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_exchange_response.freezed.dart';
part 'primary_exchange_response.g.dart';

@freezed
class PrimaryExchangeResponse with _$PrimaryExchangeResponse {
  const factory PrimaryExchangeResponse({
    @JsonKey(name: 'Symbol')
    required String? symbol,
    @JsonKey(name: 'PrimaryExchange')
    required int? primaryExchange,
  }) = _PrimaryExchangeResponse;

  factory PrimaryExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$PrimaryExchangeResponseFromJson(json);
}
