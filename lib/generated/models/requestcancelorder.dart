// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestcancelorder.freezed.dart';
part 'requestcancelorder.g.dart';

@freezed
class RequestCancelOrder with _$RequestCancelOrder {
  const factory RequestCancelOrder({
    @JsonKey(name: 'OrderId')
    String? orderID,
  }) = _RequestCancelOrder;

  factory RequestCancelOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestCancelOrderFromJson(json);
}
