// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:freezed_annotation/freezed_annotation.dart';

part 'walletcashsuccess.freezed.dart';
part 'walletcashsuccess.g.dart';

@freezed
class WalletCashSuccess with _$WalletCashSuccess {
  const factory WalletCashSuccess({
    @JsonKey(name: 'StockAccountWallet')
    double? stockAccountWallet,
    @JsonKey(name: 'AuKCStockAccountWallet')
    double? auKCStockAccountWallet,
    @JsonKey(name: 'AuJbnStockAccountWallet')
    double? auJbnStockAccountWallet,
  }) = _WalletCashSuccess;

  factory WalletCashSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletCashSuccessFromJson(json);
}
