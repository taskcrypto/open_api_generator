// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errorresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      Code: (json['Code'] as num?)?.toInt(),
      Message: json['Message'] as String?,
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'Code': instance.Code,
      'Message': instance.Message,
    };
