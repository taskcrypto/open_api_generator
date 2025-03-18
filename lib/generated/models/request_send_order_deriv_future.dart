// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_send_order_deriv_future.freezed.dart';
part 'request_send_order_deriv_future.g.dart';

@freezed
class RequestSendOrderDerivFuture with _$RequestSendOrderDerivFuture {
  const factory RequestSendOrderDerivFuture({
    @JsonKey(name: 'Symbol')
    required String symbol,
    @JsonKey(name: 'Exchange')
    required int exchange,
    @JsonKey(name: 'TradeType')
    required int tradeType,
    @JsonKey(name: 'TimeInForce')
    required int timeInForce,
    @JsonKey(name: 'Side')
    required String side,
    @JsonKey(name: 'Qty')
    required int qty,
    @JsonKey(name: 'ClosePositionOrder')
    int? closePositionOrder,
    @JsonKey(name: 'ClosePositions')
    List<String>? closePositions,
    @JsonKey(name: 'FrontOrderType')
    required int frontOrderType,
    @JsonKey(name: 'Price')
    required double price,
    @JsonKey(name: 'ExpireDay')
    required int expireDay,
    @JsonKey(name: 'ReverseLimitOrder')
    Map<String, dynamic>? reverseLimitOrder,
  }) = _RequestSendOrderDerivFuture;

  factory RequestSendOrderDerivFuture.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivFutureFromJson(json);
}
