// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_cash_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletCashSuccessImpl _$$WalletCashSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletCashSuccessImpl(
      stockAccountWallet: (json['StockAccountWallet'] as num?)?.toDouble(),
      auKcStockAccountWallet:
          (json['AuKCStockAccountWallet'] as num?)?.toDouble(),
      auJbnStockAccountWallet:
          (json['AuJbnStockAccountWallet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalletCashSuccessImplToJson(
        _$WalletCashSuccessImpl instance) =>
    <String, dynamic>{
      'StockAccountWallet': instance.stockAccountWallet,
      'AuKCStockAccountWallet': instance.auKcStockAccountWallet,
      'AuJbnStockAccountWallet': instance.auJbnStockAccountWallet,
    };
