// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'registsuccess.g.dart';

@JsonSerializable()
class RegistSuccess {
  RegistSuccess({
    this.RegistList,
  });

  factory RegistSuccess.fromJson(Map<String, dynamic> json) =>
      _$RegistSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$RegistSuccessToJson(this);

  @JsonKey(name: 'RegistList')
  final List<dynamic>? RegistList;
}
