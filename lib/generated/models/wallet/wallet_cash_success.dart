// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_cash_success.freezed.dart';
part 'wallet_cash_success.g.dart';

@freezed
class WalletCashSuccess with _$WalletCashSuccess {
  const factory WalletCashSuccess({
    @JsonKey(name: 'StockAccountWallet')
    required double? stockAccountWallet,
    @JsonKey(name: 'AuKCStockAccountWallet')
    required double? auKCStockAccountWallet,
    @JsonKey(name: 'AuJbnStockAccountWallet')
    required double? auJbnStockAccountWallet,
  }) = _WalletCashSuccess;

  factory WalletCashSuccess.fromJson(Map<String, dynamic> json) =>
      _$WalletCashSuccessFromJson(json);
}
