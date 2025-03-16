// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_option_success.freezed.dart';
part 'wallet_option_success.g.dart';

@freezed
class WalletOptionSuccess with _$WalletOptionSuccess {
  const factory WalletOptionSuccess({
    @JsonKey(name: 'OptionBuyTradeLimit') double? optionBuyTradeLimit,
    @JsonKey(name: 'OptionSellTradeLimit') double? optionSellTradeLimit,
    @JsonKey(name: 'MarginRequirement') double? marginRequirement,
  }) = _WalletOptionSuccess;

  factory WalletOptionSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletOptionSuccessFromJson(json);
}
