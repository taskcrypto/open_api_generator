// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_send_order.freezed.dart';
part 'request_send_order.g.dart';

@freezed
class RequestSendOrder with _$RequestSendOrder {
  const factory RequestSendOrder({
    @JsonKey(name: 'Symbol')
    required String symbol,
    @JsonKey(name: 'Exchange')
    required int exchange,
    @JsonKey(name: 'SecurityType')
    required int securityType,
    @JsonKey(name: 'Side')
    required String side,
    @JsonKey(name: 'CashMargin')
    required int cashMargin,
    @JsonKey(name: 'MarginTradeType')
    int? marginTradeType,
    @JsonKey(name: 'MarginPremiumUnit')
    double? marginPremiumUnit,
    @JsonKey(name: 'DelivType')
    required int delivType,
    @JsonKey(name: 'FundType')
    String? fundType,
    @JsonKey(name: 'AccountType')
    required int accountType,
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
  }) = _RequestSendOrder;

  factory RequestSendOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderFromJson(json);
}
