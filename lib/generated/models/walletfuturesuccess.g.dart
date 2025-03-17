// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletfuturesuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletFutureSuccessImpl _$$WalletFutureSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletFutureSuccessImpl(
      futureTradeLimit: (json['FutureTradeLimit'] as num?)?.toDouble(),
      marginRequirement: (json['MarginRequirement'] as num?)?.toDouble(),
      marginRequirementSell:
          (json['MarginRequirementSell'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalletFutureSuccessImplToJson(
        _$WalletFutureSuccessImpl instance) =>
    <String, dynamic>{
      'FutureTradeLimit': instance.futureTradeLimit,
      'MarginRequirement': instance.marginRequirement,
      'MarginRequirementSell': instance.marginRequirementSell,
    };
