// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_cancel_order.freezed.dart';
part 'request_cancel_order.g.dart';

@freezed
class RequestCancelOrder with _$RequestCancelOrder {
  const factory RequestCancelOrder({
    @JsonKey(name: 'OrderId')
    required String orderId,
  }) = _RequestCancelOrder;

  factory RequestCancelOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestCancelOrderFromJson(json);
}
