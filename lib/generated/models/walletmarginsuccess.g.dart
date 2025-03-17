// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletmarginsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletMarginSuccess _$WalletMarginSuccessFromJson(Map<String, dynamic> json) =>
    WalletMarginSuccess(
      MarginAccountWallet: (json['MarginAccountWallet'] as num?)?.toDouble(),
      DepositkeepRate: (json['DepositkeepRate'] as num?)?.toDouble(),
      ConsignmentDepositRate:
          (json['ConsignmentDepositRate'] as num?)?.toDouble(),
      CashOfConsignmentDepositRate:
          (json['CashOfConsignmentDepositRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WalletMarginSuccessToJson(
        WalletMarginSuccess instance) =>
    <String, dynamic>{
      'MarginAccountWallet': instance.MarginAccountWallet,
      'DepositkeepRate': instance.DepositkeepRate,
      'ConsignmentDepositRate': instance.ConsignmentDepositRate,
      'CashOfConsignmentDepositRate': instance.CashOfConsignmentDepositRate,
    };
