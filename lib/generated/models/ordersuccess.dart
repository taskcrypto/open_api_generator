// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'ordersuccess.g.dart';

@JsonSerializable()
class OrderSuccess {
  OrderSuccess({
    this.Result,
    this.OrderId,
  });

  factory OrderSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrderSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSuccessToJson(this);

  @JsonKey(name: 'Result')
  final int? Result;
  @JsonKey(name: 'OrderId')
  final String? OrderId;
}
