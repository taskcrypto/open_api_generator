// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_cash_success.freezed.dart';
part 'wallet_cash_success.g.dart';

@freezed
class WalletCashSuccess with _$WalletCashSuccess {
  const factory WalletCashSuccess({
    @JsonKey(name: 'StockAccountWallet') double? stockAccountWallet,
    @JsonKey(name: 'AuKCStockAccountWallet') double? auKcStockAccountWallet,
    @JsonKey(name: 'AuJbnStockAccountWallet') double? auJbnStockAccountWallet,
  }) = _WalletCashSuccess;

  factory WalletCashSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletCashSuccessFromJson(json);
}
