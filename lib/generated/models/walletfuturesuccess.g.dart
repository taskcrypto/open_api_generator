// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletfuturesuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletFutureSuccess _$WalletFutureSuccessFromJson(Map<String, dynamic> json) =>
    WalletFutureSuccess(
      FutureTradeLimit: (json['FutureTradeLimit'] as num?)?.toDouble(),
      MarginRequirement: (json['MarginRequirement'] as num?)?.toDouble(),
      MarginRequirementSell:
          (json['MarginRequirementSell'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WalletFutureSuccessToJson(
        WalletFutureSuccess instance) =>
    <String, dynamic>{
      'FutureTradeLimit': instance.FutureTradeLimit,
      'MarginRequirement': instance.MarginRequirement,
      'MarginRequirementSell': instance.MarginRequirementSell,
    };
