// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletmarginsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletMarginSuccessImpl _$$WalletMarginSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletMarginSuccessImpl(
      marginAccountWallet: (json['MarginAccountWallet'] as num?)?.toDouble(),
      depositkeepRate: (json['DepositkeepRate'] as num?)?.toDouble(),
      consignmentDepositRate:
          (json['ConsignmentDepositRate'] as num?)?.toDouble(),
      cashOfConsignmentDepositRate:
          (json['CashOfConsignmentDepositRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalletMarginSuccessImplToJson(
        _$WalletMarginSuccessImpl instance) =>
    <String, dynamic>{
      'MarginAccountWallet': instance.marginAccountWallet,
      'DepositkeepRate': instance.depositkeepRate,
      'ConsignmentDepositRate': instance.consignmentDepositRate,
      'CashOfConsignmentDepositRate': instance.cashOfConsignmentDepositRate,
    };
