// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart';

part 'unregisterallsuccess.g.dart';

@JsonSerializable()
class UnregisterAllSuccess {
  UnregisterAllSuccess({
    this.RegistList,
  });

  factory UnregisterAllSuccess.fromJson(Map<String, dynamic> json) =>
      _$UnregisterAllSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$UnregisterAllSuccessToJson(this);

  @JsonKey(name: 'RegistList')
  final Map<String, dynamic>? RegistList;
}
