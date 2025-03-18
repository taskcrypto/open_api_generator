// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_success.freezed.dart';
part 'order_success.g.dart';

@freezed
class OrderSuccess with _$OrderSuccess {
  const factory OrderSuccess({
    @JsonKey(name: 'Result')
    required int? result,
    @JsonKey(name: 'OrderId')
    required String? orderId,
  }) = _OrderSuccess;

  factory OrderSuccess.fromJson(Map<String, dynamic> json) =>
      _$OrderSuccessFromJson(json);
}
