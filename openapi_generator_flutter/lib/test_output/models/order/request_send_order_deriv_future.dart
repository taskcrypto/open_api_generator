// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../index.dart';

part 'request_send_order_deriv_future.freezed.dart';
part 'request_send_order_deriv_future.g.dart';

@freezed
class RequestSendOrderDerivFuture with _$RequestSendOrderDerivFuture {
  const factory RequestSendOrderDerivFuture({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'Exchange') required int exchange,
    @JsonKey(name: 'TradeType') required int tradeType,
    @JsonKey(name: 'TimeInForce') required int timeInForce,
    @JsonKey(name: 'Side') required String side,
    @JsonKey(name: 'Qty') required int qty,
    @JsonKey(name: 'ClosePositionOrder') required int closePositionOrder,
    @JsonKey(name: 'ClosePositions')
    required List<PositionsDeriv> closePositions,
    @JsonKey(name: 'FrontOrderType') required int frontOrderType,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'ExpireDay') required int expireDay,
    @JsonKey(name: 'ReverseLimitOrder')
    required Map<String, dynamic> reverseLimitOrder,
  }) = _RequestSendOrderDerivFuture;

  factory RequestSendOrderDerivFuture.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivFutureFromJson(json);
}
