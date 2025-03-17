// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ordersuccess.freezed.dart';
part 'ordersuccess.g.dart';

@freezed
class OrderSuccess with _$OrderSuccess {
  const factory OrderSuccess({
    @JsonKey(name: 'Result')
    int? result,
    @JsonKey(name: 'OrderId')
    String? orderID,
  }) = _OrderSuccess;

  factory OrderSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrderSuccessFromJson(json);
}
