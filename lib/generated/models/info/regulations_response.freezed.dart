// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regulations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegulationsResponse _$RegulationsResponseFromJson(Map<String, dynamic> json) {
  return _RegulationsResponse.fromJson(json);
}

/// @nodoc
mixin _$RegulationsResponse {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'RegulationsInfo')
  List<Map<String, dynamic>>? get regulationsInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegulationsResponseCopyWith<RegulationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegulationsResponseCopyWith<$Res> {
  factory $RegulationsResponseCopyWith(
          RegulationsResponse value, $Res Function(RegulationsResponse) then) =
      _$RegulationsResponseCopyWithImpl<$Res, RegulationsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'RegulationsInfo')
      List<Map<String, dynamic>>? regulationsInfo});
}

/// @nodoc
class _$RegulationsResponseCopyWithImpl<$Res, $Val extends RegulationsResponse>
    implements $RegulationsResponseCopyWith<$Res> {
  _$RegulationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? regulationsInfo = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      regulationsInfo: freezed == regulationsInfo
          ? _value.regulationsInfo
          : regulationsInfo // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegulationsResponseImplCopyWith<$Res>
    implements $RegulationsResponseCopyWith<$Res> {
  factory _$$RegulationsResponseImplCopyWith(_$RegulationsResponseImpl value,
          $Res Function(_$RegulationsResponseImpl) then) =
      __$$RegulationsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'RegulationsInfo')
      List<Map<String, dynamic>>? regulationsInfo});
}

/// @nodoc
class __$$RegulationsResponseImplCopyWithImpl<$Res>
    extends _$RegulationsResponseCopyWithImpl<$Res, _$RegulationsResponseImpl>
    implements _$$RegulationsResponseImplCopyWith<$Res> {
  __$$RegulationsResponseImplCopyWithImpl(_$RegulationsResponseImpl _value,
      $Res Function(_$RegulationsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? regulationsInfo = freezed,
  }) {
    return _then(_$RegulationsResponseImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      regulationsInfo: freezed == regulationsInfo
          ? _value._regulationsInfo
          : regulationsInfo // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegulationsResponseImpl implements _RegulationsResponse {
  const _$RegulationsResponseImpl(
      {@JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'RegulationsInfo')
      final List<Map<String, dynamic>>? regulationsInfo})
      : _regulationsInfo = regulationsInfo;

  factory _$RegulationsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegulationsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  final List<Map<String, dynamic>>? _regulationsInfo;
  @override
  @JsonKey(name: 'RegulationsInfo')
  List<Map<String, dynamic>>? get regulationsInfo {
    final value = _regulationsInfo;
    if (value == null) return null;
    if (_regulationsInfo is EqualUnmodifiableListView) return _regulationsInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegulationsResponse(symbol: $symbol, regulationsInfo: $regulationsInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegulationsResponseImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality()
                .equals(other._regulationsInfo, _regulationsInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol,
      const DeepCollectionEquality().hash(_regulationsInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegulationsResponseImplCopyWith<_$RegulationsResponseImpl> get copyWith =>
      __$$RegulationsResponseImplCopyWithImpl<_$RegulationsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegulationsResponseImplToJson(
      this,
    );
  }
}

abstract class _RegulationsResponse implements RegulationsResponse {
  const factory _RegulationsResponse(
          {@JsonKey(name: 'Symbol') final String? symbol,
          @JsonKey(name: 'RegulationsInfo')
          final List<Map<String, dynamic>>? regulationsInfo}) =
      _$RegulationsResponseImpl;

  factory _RegulationsResponse.fromJson(Map<String, dynamic> json) =
      _$RegulationsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'RegulationsInfo')
  List<Map<String, dynamic>>? get regulationsInfo;
  @override
  @JsonKey(ignore: true)
  _$$RegulationsResponseImplCopyWith<_$RegulationsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
