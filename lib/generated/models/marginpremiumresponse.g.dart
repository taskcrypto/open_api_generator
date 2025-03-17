// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginpremiumresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarginPremiumResponse _$MarginPremiumResponseFromJson(
        Map<String, dynamic> json) =>
    MarginPremiumResponse(
      Symbol: json['Symbol'] as String?,
      GeneralMargin: json['GeneralMargin'] as Map<String, dynamic>?,
      DayTrade: json['DayTrade'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MarginPremiumResponseToJson(
        MarginPremiumResponse instance) =>
    <String, dynamic>{
      'Symbol': instance.Symbol,
      'GeneralMargin': instance.GeneralMargin,
      'DayTrade': instance.DayTrade,
    };
