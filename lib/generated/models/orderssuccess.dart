// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderssuccess.freezed.dart';
part 'orderssuccess.g.dart';

@freezed
class OrdersSuccess with _$OrdersSuccess {
  const factory OrdersSuccess({
    @JsonKey(name: 'ID')
    String? iD,
    @JsonKey(name: 'State')
    int? state,
    @JsonKey(name: 'OrderState')
    int? orderState,
    @JsonKey(name: 'OrdType')
    int? ordType,
    @JsonKey(name: 'RecvTime')
    String? recvTime,
    @JsonKey(name: 'Symbol')
    String? symbol,
    @JsonKey(name: 'SymbolName')
    String? symbolName,
    @JsonKey(name: 'Exchange')
    int? exchange,
    @JsonKey(name: 'ExchangeName')
    String? exchangeName,
    @JsonKey(name: 'TimeInForce')
    int? timeInForce,
    @JsonKey(name: 'Price')
    double? price,
    @JsonKey(name: 'OrderQty')
    double? orderQty,
    @JsonKey(name: 'CumQty')
    double? cumQty,
    @JsonKey(name: 'Side')
    String? side,
    @JsonKey(name: 'CashMargin')
    int? cashMargin,
    @JsonKey(name: 'AccountType')
    int? accountType,
    @JsonKey(name: 'DelivType')
    int? delivType,
    @JsonKey(name: 'ExpireDay')
    int? expireDay,
    @JsonKey(name: 'MarginTradeType')
    int? marginTradeType,
    @JsonKey(name: 'MarginPremium')
    double? marginPremium,
    @JsonKey(name: 'Details')
    List<Map<String, dynamic>>? details,
  }) = _OrdersSuccess;

  factory OrdersSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrdersSuccessFromJson(json);
}
