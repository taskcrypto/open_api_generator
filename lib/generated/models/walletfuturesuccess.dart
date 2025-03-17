// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'walletfuturesuccess.freezed.dart';
part 'walletfuturesuccess.g.dart';

@freezed
class WalletFutureSuccess with _$WalletFutureSuccess {
  const factory WalletFutureSuccess({
    @JsonKey(name: 'FutureTradeLimit')
    double? futureTradeLimit,
    @JsonKey(name: 'MarginRequirement')
    double? marginRequirement,
    @JsonKey(name: 'MarginRequirementSell')
    double? marginRequirementSell,
  }) = _WalletFutureSuccess;

  factory WalletFutureSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletFutureSuccessFromJson(json);
}
