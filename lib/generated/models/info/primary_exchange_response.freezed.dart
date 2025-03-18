// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_exchange_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrimaryExchangeResponse _$PrimaryExchangeResponseFromJson(
    Map<String, dynamic> json) {
  return _PrimaryExchangeResponse.fromJson(json);
}

/// @nodoc
mixin _$PrimaryExchangeResponse {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'PrimaryExchange')
  int? get primaryExchange => throw _privateConstructorUsedError;

  /// Serializes this PrimaryExchangeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrimaryExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryExchangeResponseCopyWith<PrimaryExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryExchangeResponseCopyWith<$Res> {
  factory $PrimaryExchangeResponseCopyWith(PrimaryExchangeResponse value,
          $Res Function(PrimaryExchangeResponse) then) =
      _$PrimaryExchangeResponseCopyWithImpl<$Res, PrimaryExchangeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'PrimaryExchange') int? primaryExchange});
}

/// @nodoc
class _$PrimaryExchangeResponseCopyWithImpl<$Res,
        $Val extends PrimaryExchangeResponse>
    implements $PrimaryExchangeResponseCopyWith<$Res> {
  _$PrimaryExchangeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimaryExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? primaryExchange = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryExchange: freezed == primaryExchange
          ? _value.primaryExchange
          : primaryExchange // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryExchangeResponseImplCopyWith<$Res>
    implements $PrimaryExchangeResponseCopyWith<$Res> {
  factory _$$PrimaryExchangeResponseImplCopyWith(
          _$PrimaryExchangeResponseImpl value,
          $Res Function(_$PrimaryExchangeResponseImpl) then) =
      __$$PrimaryExchangeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'PrimaryExchange') int? primaryExchange});
}

/// @nodoc
class __$$PrimaryExchangeResponseImplCopyWithImpl<$Res>
    extends _$PrimaryExchangeResponseCopyWithImpl<$Res,
        _$PrimaryExchangeResponseImpl>
    implements _$$PrimaryExchangeResponseImplCopyWith<$Res> {
  __$$PrimaryExchangeResponseImplCopyWithImpl(
      _$PrimaryExchangeResponseImpl _value,
      $Res Function(_$PrimaryExchangeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimaryExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? primaryExchange = freezed,
  }) {
    return _then(_$PrimaryExchangeResponseImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryExchange: freezed == primaryExchange
          ? _value.primaryExchange
          : primaryExchange // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryExchangeResponseImpl implements _PrimaryExchangeResponse {
  const _$PrimaryExchangeResponseImpl(
      {@JsonKey(name: 'Symbol') required this.symbol,
      @JsonKey(name: 'PrimaryExchange') required this.primaryExchange});

  factory _$PrimaryExchangeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryExchangeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'PrimaryExchange')
  final int? primaryExchange;

  @override
  String toString() {
    return 'PrimaryExchangeResponse(symbol: $symbol, primaryExchange: $primaryExchange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryExchangeResponseImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.primaryExchange, primaryExchange) ||
                other.primaryExchange == primaryExchange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, primaryExchange);

  /// Create a copy of PrimaryExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryExchangeResponseImplCopyWith<_$PrimaryExchangeResponseImpl>
      get copyWith => __$$PrimaryExchangeResponseImplCopyWithImpl<
          _$PrimaryExchangeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryExchangeResponseImplToJson(
      this,
    );
  }
}

abstract class _PrimaryExchangeResponse implements PrimaryExchangeResponse {
  const factory _PrimaryExchangeResponse(
      {@JsonKey(name: 'Symbol') required final String? symbol,
      @JsonKey(name: 'PrimaryExchange')
      required final int? primaryExchange}) = _$PrimaryExchangeResponseImpl;

  factory _PrimaryExchangeResponse.fromJson(Map<String, dynamic> json) =
      _$PrimaryExchangeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'PrimaryExchange')
  int? get primaryExchange;

  /// Create a copy of PrimaryExchangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimaryExchangeResponseImplCopyWith<_$PrimaryExchangeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
