// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_success.freezed.dart';
part 'orders_success.g.dart';

@freezed
class OrdersSuccess with _$OrdersSuccess {
  const factory OrdersSuccess({
    @JsonKey(name: 'ID') required String id,
    @JsonKey(name: 'State') required int state,
    @JsonKey(name: 'OrderState') required int orderState,
    @JsonKey(name: 'OrdType') required int ordType,
    @JsonKey(name: 'RecvTime') required String recvTime,
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'SymbolName') required String symbolName,
    @JsonKey(name: 'Exchange') required int exchange,
    @JsonKey(name: 'ExchangeName') required String exchangeName,
    @JsonKey(name: 'TimeInForce') required int timeInForce,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'OrderQty') required double orderQty,
    @JsonKey(name: 'CumQty') required double cumQty,
    @JsonKey(name: 'Side') required String side,
    @JsonKey(name: 'CashMargin') required int cashMargin,
    @JsonKey(name: 'AccountType') required int accountType,
    @JsonKey(name: 'DelivType') required int delivType,
    @JsonKey(name: 'ExpireDay') required int expireDay,
    @JsonKey(name: 'MarginTradeType') required int marginTradeType,
    @JsonKey(name: 'MarginPremium') required double marginPremium,
    @JsonKey(name: 'Details') required List<Map<String, dynamic>> details,
  }) = _OrdersSuccess;

  factory OrdersSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrdersSuccessFromJson(json);
}
