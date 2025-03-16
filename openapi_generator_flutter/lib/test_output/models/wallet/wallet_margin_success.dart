// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_margin_success.freezed.dart';
part 'wallet_margin_success.g.dart';

@freezed
class WalletMarginSuccess with _$WalletMarginSuccess {
  const factory WalletMarginSuccess({
    @JsonKey(name: 'MarginAccountWallet') required double marginAccountWallet,
    @JsonKey(name: 'DepositkeepRate') required double depositkeepRate,
    @JsonKey(name: 'ConsignmentDepositRate')
    required double consignmentDepositRate,
    @JsonKey(name: 'CashOfConsignmentDepositRate')
    required double cashOfConsignmentDepositRate,
  }) = _WalletMarginSuccess;

  factory WalletMarginSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletMarginSuccessFromJson(json);
}
