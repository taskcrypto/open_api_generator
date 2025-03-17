// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'walletoptionsuccess.g.dart';

@JsonSerializable()
class WalletOptionSuccess {
  WalletOptionSuccess({
    this.OptionBuyTradeLimit,
    this.OptionSellTradeLimit,
    this.MarginRequirement,
  });

  factory WalletOptionSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletOptionSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$WalletOptionSuccessToJson(this);

  @JsonKey(name: 'OptionBuyTradeLimit')
  final double? OptionBuyTradeLimit;
  @JsonKey(name: 'OptionSellTradeLimit')
  final double? OptionSellTradeLimit;
  @JsonKey(name: 'MarginRequirement')
  final double? MarginRequirement;
}
