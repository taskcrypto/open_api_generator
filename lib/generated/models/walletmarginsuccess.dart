// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'walletmarginsuccess.freezed.dart';
part 'walletmarginsuccess.g.dart';

@freezed
class WalletMarginSuccess with _$WalletMarginSuccess {
  const factory WalletMarginSuccess({
    @JsonKey(name: 'MarginAccountWallet')
    double? marginAccountWallet,
    @JsonKey(name: 'DepositkeepRate')
    double? depositkeepRate,
    @JsonKey(name: 'ConsignmentDepositRate')
    double? consignmentDepositRate,
    @JsonKey(name: 'CashOfConsignmentDepositRate')
    double? cashOfConsignmentDepositRate,
  }) = _WalletMarginSuccess;

  factory WalletMarginSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletMarginSuccessFromJson(json);
}
