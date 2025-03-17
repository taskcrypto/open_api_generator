// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'walletcashsuccess.g.dart';

@JsonSerializable()
class WalletCashSuccess {
  WalletCashSuccess({
    this.StockAccountWallet,
    this.AuKCStockAccountWallet,
    this.AuJbnStockAccountWallet,
  });

  factory WalletCashSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletCashSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCashSuccessToJson(this);

  @JsonKey(name: 'StockAccountWallet')
  final double? StockAccountWallet;
  @JsonKey(name: 'AuKCStockAccountWallet')
  final double? AuKCStockAccountWallet;
  @JsonKey(name: 'AuJbnStockAccountWallet')
  final double? AuJbnStockAccountWallet;
}
