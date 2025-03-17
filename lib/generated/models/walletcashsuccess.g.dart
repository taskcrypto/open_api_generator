// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletcashsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCashSuccess _$WalletCashSuccessFromJson(Map<String, dynamic> json) =>
    WalletCashSuccess(
      StockAccountWallet: (json['StockAccountWallet'] as num?)?.toDouble(),
      AuKCStockAccountWallet:
          (json['AuKCStockAccountWallet'] as num?)?.toDouble(),
      AuJbnStockAccountWallet:
          (json['AuJbnStockAccountWallet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WalletCashSuccessToJson(WalletCashSuccess instance) =>
    <String, dynamic>{
      'StockAccountWallet': instance.StockAccountWallet,
      'AuKCStockAccountWallet': instance.AuKCStockAccountWallet,
      'AuJbnStockAccountWallet': instance.AuJbnStockAccountWallet,
    };
