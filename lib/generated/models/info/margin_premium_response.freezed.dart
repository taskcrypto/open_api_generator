// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'margin_premium_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarginPremiumResponse _$MarginPremiumResponseFromJson(
    Map<String, dynamic> json) {
  return _MarginPremiumResponse.fromJson(json);
}

/// @nodoc
mixin _$MarginPremiumResponse {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'GeneralMargin')
  Map<String, dynamic>? get generalMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'DayTrade')
  Map<String, dynamic>? get dayTrade => throw _privateConstructorUsedError;

  /// Serializes this MarginPremiumResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarginPremiumResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarginPremiumResponseCopyWith<MarginPremiumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginPremiumResponseCopyWith<$Res> {
  factory $MarginPremiumResponseCopyWith(MarginPremiumResponse value,
          $Res Function(MarginPremiumResponse) then) =
      _$MarginPremiumResponseCopyWithImpl<$Res, MarginPremiumResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'GeneralMargin') Map<String, dynamic>? generalMargin,
      @JsonKey(name: 'DayTrade') Map<String, dynamic>? dayTrade});
}

/// @nodoc
class _$MarginPremiumResponseCopyWithImpl<$Res,
        $Val extends MarginPremiumResponse>
    implements $MarginPremiumResponseCopyWith<$Res> {
  _$MarginPremiumResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarginPremiumResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? generalMargin = freezed,
    Object? dayTrade = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      generalMargin: freezed == generalMargin
          ? _value.generalMargin
          : generalMargin // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dayTrade: freezed == dayTrade
          ? _value.dayTrade
          : dayTrade // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarginPremiumResponseImplCopyWith<$Res>
    implements $MarginPremiumResponseCopyWith<$Res> {
  factory _$$MarginPremiumResponseImplCopyWith(
          _$MarginPremiumResponseImpl value,
          $Res Function(_$MarginPremiumResponseImpl) then) =
      __$$MarginPremiumResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'GeneralMargin') Map<String, dynamic>? generalMargin,
      @JsonKey(name: 'DayTrade') Map<String, dynamic>? dayTrade});
}

/// @nodoc
class __$$MarginPremiumResponseImplCopyWithImpl<$Res>
    extends _$MarginPremiumResponseCopyWithImpl<$Res,
        _$MarginPremiumResponseImpl>
    implements _$$MarginPremiumResponseImplCopyWith<$Res> {
  __$$MarginPremiumResponseImplCopyWithImpl(_$MarginPremiumResponseImpl _value,
      $Res Function(_$MarginPremiumResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarginPremiumResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? generalMargin = freezed,
    Object? dayTrade = freezed,
  }) {
    return _then(_$MarginPremiumResponseImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      generalMargin: freezed == generalMargin
          ? _value._generalMargin
          : generalMargin // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      dayTrade: freezed == dayTrade
          ? _value._dayTrade
          : dayTrade // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarginPremiumResponseImpl implements _MarginPremiumResponse {
  const _$MarginPremiumResponseImpl(
      {@JsonKey(name: 'Symbol') required this.symbol,
      @JsonKey(name: 'GeneralMargin')
      required final Map<String, dynamic>? generalMargin,
      @JsonKey(name: 'DayTrade') required final Map<String, dynamic>? dayTrade})
      : _generalMargin = generalMargin,
        _dayTrade = dayTrade;

  factory _$MarginPremiumResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarginPremiumResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  final Map<String, dynamic>? _generalMargin;
  @override
  @JsonKey(name: 'GeneralMargin')
  Map<String, dynamic>? get generalMargin {
    final value = _generalMargin;
    if (value == null) return null;
    if (_generalMargin is EqualUnmodifiableMapView) return _generalMargin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _dayTrade;
  @override
  @JsonKey(name: 'DayTrade')
  Map<String, dynamic>? get dayTrade {
    final value = _dayTrade;
    if (value == null) return null;
    if (_dayTrade is EqualUnmodifiableMapView) return _dayTrade;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MarginPremiumResponse(symbol: $symbol, generalMargin: $generalMargin, dayTrade: $dayTrade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarginPremiumResponseImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality()
                .equals(other._generalMargin, _generalMargin) &&
            const DeepCollectionEquality().equals(other._dayTrade, _dayTrade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      const DeepCollectionEquality().hash(_generalMargin),
      const DeepCollectionEquality().hash(_dayTrade));

  /// Create a copy of MarginPremiumResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarginPremiumResponseImplCopyWith<_$MarginPremiumResponseImpl>
      get copyWith => __$$MarginPremiumResponseImplCopyWithImpl<
          _$MarginPremiumResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarginPremiumResponseImplToJson(
      this,
    );
  }
}

abstract class _MarginPremiumResponse implements MarginPremiumResponse {
  const factory _MarginPremiumResponse(
          {@JsonKey(name: 'Symbol') required final String? symbol,
          @JsonKey(name: 'GeneralMargin')
          required final Map<String, dynamic>? generalMargin,
          @JsonKey(name: 'DayTrade')
          required final Map<String, dynamic>? dayTrade}) =
      _$MarginPremiumResponseImpl;

  factory _MarginPremiumResponse.fromJson(Map<String, dynamic> json) =
      _$MarginPremiumResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'GeneralMargin')
  Map<String, dynamic>? get generalMargin;
  @override
  @JsonKey(name: 'DayTrade')
  Map<String, dynamic>? get dayTrade;

  /// Create a copy of MarginPremiumResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarginPremiumResponseImplCopyWith<_$MarginPremiumResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
