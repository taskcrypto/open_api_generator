// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestsendorder.freezed.dart';
part 'requestsendorder.g.dart';

@freezed
class RequestSendOrder with _$RequestSendOrder {
  const factory RequestSendOrder({
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'Exchange')
    int? exchange,
    @JsonKey(name: 'SecurityType')
    int? securityType,
    @JsonKey(name: 'Side')
    String? side,
    @JsonKey(name: 'CashMargin')
    int? cashMargin,
    @JsonKey(name: 'MarginTradeType')
    int? marginTradeType,
    @JsonKey(name: 'MarginPremiumUnit')
    double? marginPremiumUnit,
    @JsonKey(name: 'DelivType')
    int? delivType,
    @JsonKey(name: 'FundType')
    String? fundType,
    @JsonKey(name: 'AccountType')
    int? accountType,
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
  }) = _RequestSendOrder;

  factory RequestSendOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderFromJson(json);
}
