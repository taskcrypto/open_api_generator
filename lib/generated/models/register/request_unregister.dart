// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_unregister.freezed.dart';
part 'request_unregister.g.dart';

@freezed
class RequestUnregister with _$RequestUnregister {
  const factory RequestUnregister({
    @JsonKey(name: 'Symbols')
    required List<Map<String, dynamic>>? symbols,
  }) = _RequestUnregister;

  factory RequestUnregister.fromJson(Map<String, dynamic> json) =>
      _$RequestUnregisterFromJson(json);
}
