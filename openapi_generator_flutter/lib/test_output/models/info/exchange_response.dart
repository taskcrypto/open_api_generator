// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_response.freezed.dart';
part 'exchange_response.g.dart';

@freezed
class ExchangeResponse with _$ExchangeResponse {
  const factory ExchangeResponse({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'BidPrice') required double bidPrice,
    @JsonKey(name: 'Spread') required double spread,
    @JsonKey(name: 'AskPrice') required double askPrice,
    @JsonKey(name: 'Change') required double change,
    @JsonKey(name: 'Time') required String time,
  }) = _ExchangeResponse;

  factory ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeResponseFromJson(json);
}
