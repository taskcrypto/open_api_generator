// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_send_order_deriv_option.freezed.dart';
part 'request_send_order_deriv_option.g.dart';

@freezed
class RequestSendOrderDerivOption with _$RequestSendOrderDerivOption {
  const factory RequestSendOrderDerivOption({
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
  }) = _RequestSendOrderDerivOption;

  factory RequestSendOrderDerivOption.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivOptionFromJson(json);
}
