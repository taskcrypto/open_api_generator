// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'walletfuturesuccess.g.dart';

@JsonSerializable()
class WalletFutureSuccess {
  WalletFutureSuccess({
    this.FutureTradeLimit,
    this.MarginRequirement,
    this.MarginRequirementSell,
  });

  factory WalletFutureSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletFutureSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$WalletFutureSuccessToJson(this);

  @JsonKey(name: 'FutureTradeLimit')
  final double? FutureTradeLimit;
  @JsonKey(name: 'MarginRequirement')
  final double? MarginRequirement;
  @JsonKey(name: 'MarginRequirementSell')
  final double? MarginRequirementSell;
}
