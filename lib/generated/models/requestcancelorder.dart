// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'requestcancelorder.g.dart';

@JsonSerializable()
class RequestCancelOrder {
  RequestCancelOrder({
    this.OrderId,
  });

  factory RequestCancelOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestCancelOrderFromJson(json);

  Map<String, dynamic> toJson() => _$RequestCancelOrderToJson(this);

  @JsonKey(name: 'OrderId')
  final String? OrderId;
}
