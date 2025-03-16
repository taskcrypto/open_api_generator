// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'margin_premium_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarginPremiumResponseImpl _$$MarginPremiumResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MarginPremiumResponseImpl(
      symbol: json['Symbol'] as String?,
      generalMargin: json['GeneralMargin'] as Map<String, dynamic>?,
      dayTrade: json['DayTrade'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MarginPremiumResponseImplToJson(
        _$MarginPremiumResponseImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'GeneralMargin': instance.generalMargin,
      'DayTrade': instance.dayTrade,
    };
