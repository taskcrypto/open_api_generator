// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletoptionsuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletOptionSuccessImpl _$$WalletOptionSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletOptionSuccessImpl(
      optionBuyTradeLimit: (json['OptionBuyTradeLimit'] as num?)?.toDouble(),
      optionSellTradeLimit: (json['OptionSellTradeLimit'] as num?)?.toDouble(),
      marginRequirement: (json['MarginRequirement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalletOptionSuccessImplToJson(
        _$WalletOptionSuccessImpl instance) =>
    <String, dynamic>{
      'OptionBuyTradeLimit': instance.optionBuyTradeLimit,
      'OptionSellTradeLimit': instance.optionSellTradeLimit,
      'MarginRequirement': instance.marginRequirement,
    };
