// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rankingdefaultresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingDefaultResponse _$RankingDefaultResponseFromJson(
    Map<String, dynamic> json) {
  return _RankingDefaultResponse.fromJson(json);
}

/// @nodoc
mixin _$RankingDefaultResponse {
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingDefaultResponseCopyWith<RankingDefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingDefaultResponseCopyWith<$Res> {
  factory $RankingDefaultResponseCopyWith(RankingDefaultResponse value,
          $Res Function(RankingDefaultResponse) then) =
      _$RankingDefaultResponseCopyWithImpl<$Res, RankingDefaultResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class _$RankingDefaultResponseCopyWithImpl<$Res,
        $Val extends RankingDefaultResponse>
    implements $RankingDefaultResponseCopyWith<$Res> {
  _$RankingDefaultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$RankingDefaultResponseImplCopyWith<$Res>
    implements $RankingDefaultResponseCopyWith<$Res> {
  factory _$$RankingDefaultResponseImplCopyWith(
          _$RankingDefaultResponseImpl value,
          $Res Function(_$RankingDefaultResponseImpl) then) =
      __$$RankingDefaultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'ExchangeDivision') String? exchangeDivision,
      @JsonKey(name: 'Ranking') List<Map<String, dynamic>>? ranking});
}

/// @nodoc
class __$$RankingDefaultResponseImplCopyWithImpl<$Res>
    extends _$RankingDefaultResponseCopyWithImpl<$Res,
        _$RankingDefaultResponseImpl>
    implements _$$RankingDefaultResponseImplCopyWith<$Res> {
  __$$RankingDefaultResponseImplCopyWithImpl(
      _$RankingDefaultResponseImpl _value,
      $Res Function(_$RankingDefaultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? exchangeDivision = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_$RankingDefaultResponseImpl(
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
class _$RankingDefaultResponseImpl implements _RankingDefaultResponse {
  const _$RankingDefaultResponseImpl(
      {@JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'ExchangeDivision') this.exchangeDivision,
      @JsonKey(name: 'Ranking') final List<Map<String, dynamic>>? ranking})
      : _ranking = ranking;

  factory _$RankingDefaultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingDefaultResponseImplFromJson(json);

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
    return 'RankingDefaultResponse(type: $type, exchangeDivision: $exchangeDivision, ranking: $ranking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingDefaultResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.exchangeDivision, exchangeDivision) ||
                other.exchangeDivision == exchangeDivision) &&
            const DeepCollectionEquality().equals(other._ranking, _ranking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, exchangeDivision,
      const DeepCollectionEquality().hash(_ranking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingDefaultResponseImplCopyWith<_$RankingDefaultResponseImpl>
      get copyWith => __$$RankingDefaultResponseImplCopyWithImpl<
          _$RankingDefaultResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingDefaultResponseImplToJson(
      this,
    );
  }
}

abstract class _RankingDefaultResponse implements RankingDefaultResponse {
  const factory _RankingDefaultResponse(
          {@JsonKey(name: 'Type') final String? type,
          @JsonKey(name: 'ExchangeDivision') final String? exchangeDivision,
          @JsonKey(name: 'Ranking')
          final List<Map<String, dynamic>>? ranking}) =
      _$RankingDefaultResponseImpl;

  factory _RankingDefaultResponse.fromJson(Map<String, dynamic> json) =
      _$RankingDefaultResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'ExchangeDivision')
  String? get exchangeDivision;
  @override
  @JsonKey(name: 'Ranking')
  List<Map<String, dynamic>>? get ranking;
  @override
  @JsonKey(ignore: true)
  _$$RankingDefaultResponseImplCopyWith<_$RankingDefaultResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
