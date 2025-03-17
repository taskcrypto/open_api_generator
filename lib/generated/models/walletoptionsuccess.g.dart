// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletoptionsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletOptionSuccess _$WalletOptionSuccessFromJson(Map<String, dynamic> json) =>
    WalletOptionSuccess(
      OptionBuyTradeLimit: (json['OptionBuyTradeLimit'] as num?)?.toDouble(),
      OptionSellTradeLimit: (json['OptionSellTradeLimit'] as num?)?.toDouble(),
      MarginRequirement: (json['MarginRequirement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WalletOptionSuccessToJson(
        WalletOptionSuccess instance) =>
    <String, dynamic>{
      'OptionBuyTradeLimit': instance.OptionBuyTradeLimit,
      'OptionSellTradeLimit': instance.OptionSellTradeLimit,
      'MarginRequirement': instance.MarginRequirement,
    };
