// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokensuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenSuccess _$TokenSuccessFromJson(Map<String, dynamic> json) => TokenSuccess(
      ResultCode: (json['ResultCode'] as num?)?.toInt(),
      Token: json['Token'] as String?,
    );

Map<String, dynamic> _$TokenSuccessToJson(TokenSuccess instance) =>
    <String, dynamic>{
      'ResultCode': instance.ResultCode,
      'Token': instance.Token,
    };
