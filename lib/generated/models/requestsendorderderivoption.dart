// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestsendorderderivoption.freezed.dart';
part 'requestsendorderderivoption.g.dart';

@freezed
class RequestSendOrderDerivOption with _$RequestSendOrderDerivOption {
  const factory RequestSendOrderDerivOption({
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
  }) = _RequestSendOrderDerivOption;

  factory RequestSendOrderDerivOption.fromJson(Map<String, dynamic> json) =>
      _$RequestSendOrderDerivOptionFromJson(json);
}
