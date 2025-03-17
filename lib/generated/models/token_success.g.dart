// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenSuccessImpl _$$TokenSuccessImplFromJson(Map<String, dynamic> json) =>
    _$TokenSuccessImpl(
      resultCode: (json['ResultCode'] as num?)?.toInt(),
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$$TokenSuccessImplToJson(_$TokenSuccessImpl instance) =>
    <String, dynamic>{
      'ResultCode': instance.resultCode,
      'Token': instance.token,
    };
