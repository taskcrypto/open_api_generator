// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'walletoptionsuccess.freezed.dart';
part 'walletoptionsuccess.g.dart';

@freezed
class WalletOptionSuccess with _$WalletOptionSuccess {
  const factory WalletOptionSuccess({
    @JsonKey(name: 'OptionBuyTradeLimit')
    double? optionBuyTradeLimit,
    @JsonKey(name: 'OptionSellTradeLimit')
    double? optionSellTradeLimit,
    @JsonKey(name: 'MarginRequirement')
    double? marginRequirement,
  }) = _WalletOptionSuccess;

  factory WalletOptionSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletOptionSuccessFromJson(json);
}
