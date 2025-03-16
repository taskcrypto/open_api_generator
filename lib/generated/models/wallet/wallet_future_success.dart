// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_future_success.freezed.dart';
part 'wallet_future_success.g.dart';

@freezed
class WalletFutureSuccess with _$WalletFutureSuccess {
  const factory WalletFutureSuccess({
    @JsonKey(name: 'FutureTradeLimit') double? futureTradeLimit,
    @JsonKey(name: 'MarginRequirement') double? marginRequirement,
    @JsonKey(name: 'MarginRequirementSell') double? marginRequirementSell,
  }) = _WalletFutureSuccess;

  factory WalletFutureSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletFutureSuccessFromJson(json);
}
