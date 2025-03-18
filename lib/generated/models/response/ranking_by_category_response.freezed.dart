// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_by_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingByCategoryResponse _$RankingByCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _RankingByCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$RankingByCategoryResponse {
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking => throw _privateConstructorUsedError;

  /// Serializes this RankingByCategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankingByCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingByCategoryResponseCopyWith<RankingByCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingByCategoryResponseCopyWith<$Res> {
  factory $RankingByCategoryResponseCopyWith(RankingByCategoryResponse value,
          $Res Function(RankingByCategoryResponse) then) =
      _$RankingByCategoryResponseCopyWithImpl<$Res, RankingByCategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class _$RankingByCategoryResponseCopyWithImpl<$Res,
        $Val extends RankingByCategoryResponse>
    implements $RankingByCategoryResponseCopyWith<$Res> {
  _$RankingByCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingByCategoryResponse
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
abstract class _$$RankingByCategoryResponseImplCopyWith<$Res>
    implements $RankingByCategoryResponseCopyWith<$Res> {
  factory _$$RankingByCategoryResponseImplCopyWith(
          _$RankingByCategoryResponseImpl value,
          $Res Function(_$RankingByCategoryResponseImpl) then) =
      __$$RankingByCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class __$$RankingByCategoryResponseImplCopyWithImpl<$Res>
    extends _$RankingByCategoryResponseCopyWithImpl<$Res,
        _$RankingByCategoryResponseImpl>
    implements _$$RankingByCategoryResponseImplCopyWith<$Res> {
  __$$RankingByCategoryResponseImplCopyWithImpl(
      _$RankingByCategoryResponseImpl _value,
      $Res Function(_$RankingByCategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingByCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? exchangeDivision = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_$RankingByCategoryResponseImpl(
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
class _$RankingByCategoryResponseImpl implements _RankingByCategoryResponse {
  const _$RankingByCategoryResponseImpl(
      {@JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'ExchangeDivision') required this.exchangeDivision,
      @JsonKey(name: 'Ranking')
      required final List<Map<String, dynamic>>? ranking})
      : _ranking = ranking;

  factory _$RankingByCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingByCategoryResponseImplFromJson(json);

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
    return 'RankingByCategoryResponse(type: $type, exchangeDivision: $exchangeDivision, ranking: $ranking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingByCategoryResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.exchangeDivision, exchangeDivision) ||
                other.exchangeDivision == exchangeDivision) &&
            const DeepCollectionEquality().equals(other._ranking, _ranking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, exchangeDivision,
      const DeepCollectionEquality().hash(_ranking));

  /// Create a copy of RankingByCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingByCategoryResponseImplCopyWith<_$RankingByCategoryResponseImpl>
      get copyWith => __$$RankingByCategoryResponseImplCopyWithImpl<
          _$RankingByCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingByCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _RankingByCategoryResponse implements RankingByCategoryResponse {
  const factory _RankingByCategoryResponse(
          {@JsonKey(name: 'Type') required final String? type,
          @JsonKey(name: 'ExchangeDivision')
          required final String? exchangeDivision,
          @JsonKey(name: 'Ranking')
          required final List<Map<String, dynamic>>? ranking}) =
      _$RankingByCategoryResponseImpl;

  factory _RankingByCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$RankingByCategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision;
  @override
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking;

  /// Create a copy of RankingByCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingByCategoryResponseImplCopyWith<_$RankingByCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
