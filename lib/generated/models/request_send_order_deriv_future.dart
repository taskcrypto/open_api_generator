// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_send_order_deriv_future.freezed.dart';
part 'request_send_order_deriv_future.g.dart';

@freezed
class RequestSendOrderDerivFuture with _$RequestSendOrderDerivFuture {
  const factory RequestSendOrderDerivFuture({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'Exchange')
    int? exchange,
    @JsonKey(name: 'TradeType')
    int? tradeType,
    @JsonKey(name: 'TimeInForce')
    int? timeInForce,
    @JsonKey(name: 'Side')
    String? side,
    @JsonKey(name: 'Qty')
    int? qty,
    @JsonKey(name: 'ClosePositionOrder')
    int? closePositionOrder,
    @JsonKey(name: 'ClosePositions')
    List<dynamic>? closePositions,
    @JsonKey(name: 'FrontOrderType')
    int? frontOrderType,
    @JsonKey(name: 'Price')
    double? price,
    @JsonKey(name: 'ExpireDay')
    int? expireDay,
    @JsonKey(name: 'ReverseLimitOrder')
    Map<String, dynamic>? reverseLimitOrder,
  }) = _RequestSendOrderDerivFuture;

  factory RequestSendOrderDerivFuture.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivFutureFromJson(json);
}
