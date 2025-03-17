// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'walletmarginsuccess.g.dart';

@JsonSerializable()
class WalletMarginSuccess {
  WalletMarginSuccess({
    this.MarginAccountWallet,
    this.DepositkeepRate,
    this.ConsignmentDepositRate,
    this.CashOfConsignmentDepositRate,
  });

  factory WalletMarginSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletMarginSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$WalletMarginSuccessToJson(this);

  @JsonKey(name: 'MarginAccountWallet')
  final double? MarginAccountWallet;
  @JsonKey(name: 'DepositkeepRate')
  final double? DepositkeepRate;
  @JsonKey(name: 'ConsignmentDepositRate')
  final double? ConsignmentDepositRate;
  @JsonKey(name: 'CashOfConsignmentDepositRate')
  final double? CashOfConsignmentDepositRate;
}
