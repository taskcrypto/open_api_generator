// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_by_trade_volume_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingByTradeVolumeResponse _$RankingByTradeVolumeResponseFromJson(
    Map<String, dynamic> json) {
  return _RankingByTradeVolumeResponse.fromJson(json);
}

/// @nodoc
mixin _$RankingByTradeVolumeResponse {
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking => throw _privateConstructorUsedError;

  /// Serializes this RankingByTradeVolumeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankingByTradeVolumeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingByTradeVolumeResponseCopyWith<RankingByTradeVolumeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingByTradeVolumeResponseCopyWith<$Res> {
  factory $RankingByTradeVolumeResponseCopyWith(
          RankingByTradeVolumeResponse value,
          $Res Function(RankingByTradeVolumeResponse) then) =
      _$RankingByTradeVolumeResponseCopyWithImpl<$Res,
          RankingByTradeVolumeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class _$RankingByTradeVolumeResponseCopyWithImpl<$Res,
        $Val extends RankingByTradeVolumeResponse>
    implements $RankingByTradeVolumeResponseCopyWith<$Res> {
  _$RankingByTradeVolumeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingByTradeVolumeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? exchangeDivision = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeDivision: freezed == exchangeDivision
          ? _value.exchangeDivision
          : exchangeDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingByTradeVolumeResponseImplCopyWith<$Res>
    implements $RankingByTradeVolumeResponseCopyWith<$Res> {
  factory _$$RankingByTradeVolumeResponseImplCopyWith(
          _$RankingByTradeVolumeResponseImpl value,
          $Res Function(_$RankingByTradeVolumeResponseImpl) then) =
      __$$RankingByTradeVolumeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class __$$RankingByTradeVolumeResponseImplCopyWithImpl<$Res>
    extends _$RankingByTradeVolumeResponseCopyWithImpl<$Res,
        _$RankingByTradeVolumeResponseImpl>
    implements _$$RankingByTradeVolumeResponseImplCopyWith<$Res> {
  __$$RankingByTradeVolumeResponseImplCopyWithImpl(
      _$RankingByTradeVolumeResponseImpl _value,
      $Res Function(_$RankingByTradeVolumeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingByTradeVolumeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? exchangeDivision = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_$RankingByTradeVolumeResponseImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeDivision: freezed == exchangeDivision
          ? _value.exchangeDivision
          : exchangeDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: freezed == ranking
          ? _value._ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingByTradeVolumeResponseImpl
    implements _RankingByTradeVolumeResponse {
  const _$RankingByTradeVolumeResponseImpl(
      {@JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'ExchangeDivision') required this.exchangeDivision,
      @JsonKey(name: 'Ranking')
      required final List<Map<String, dynamic>>? ranking})
      : _ranking = ranking;

  factory _$RankingByTradeVolumeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RankingByTradeVolumeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Type')
  final String? type;
  @override
  @JsonKey(name: 'ExchangeDivision')
  final String? exchangeDivision;
  final List<Map<String, dynamic>>? _ranking;
  @override
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking {
    final value = _ranking;
    if (value == null) return null;
    if (_ranking is EqualUnmodifiableListView) return _ranking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RankingByTradeVolumeResponse(type: $type, exchangeDivision: $exchangeDivision, ranking: $ranking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingByTradeVolumeResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.exchangeDivision, exchangeDivision) ||
                other.exchangeDivision == exchangeDivision) &&
            const DeepCollectionEquality().equals(other._ranking, _ranking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, exchangeDivision,
      const DeepCollectionEquality().hash(_ranking));

  /// Create a copy of RankingByTradeVolumeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingByTradeVolumeResponseImplCopyWith<
          _$RankingByTradeVolumeResponseImpl>
      get copyWith => __$$RankingByTradeVolumeResponseImplCopyWithImpl<
          _$RankingByTradeVolumeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingByTradeVolumeResponseImplToJson(
      this,
    );
  }
}

abstract class _RankingByTradeVolumeResponse
    implements RankingByTradeVolumeResponse {
  const factory _RankingByTradeVolumeResponse(
          {@JsonKey(name: 'Type') required final String? type,
          @JsonKey(name: 'ExchangeDivision')
          required final String? exchangeDivision,
          @JsonKey(name: 'Ranking')
          required final List<Map<String, dynamic>>? ranking}) =
      _$RankingByTradeVolumeResponseImpl;

  factory _RankingByTradeVolumeResponse.fromJson(Map<String, dynamic> json) =
      _$RankingByTradeVolumeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision;
  @override
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking;

  /// Create a copy of RankingByTradeVolumeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingByTradeVolumeResponseImplCopyWith<
          _$RankingByTradeVolumeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
