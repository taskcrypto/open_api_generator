// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Positions _$PositionsFromJson(Map<String, dynamic> json) {
  return _Positions.fromJson(json);
}

/// @nodoc
mixin _$Positions {
  @JsonKey(name: 'HoldID')
  String? get holdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Qty')
  int? get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionsCopyWith<Positions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionsCopyWith<$Res> {
  factory $PositionsCopyWith(Positions value, $Res Function(Positions) then) =
      _$PositionsCopyWithImpl<$Res, Positions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'HoldID') String? holdId,
      @JsonKey(name: 'Qty') int? qty});
}

/// @nodoc
class _$PositionsCopyWithImpl<$Res, $Val extends Positions>
    implements $PositionsCopyWith<$Res> {
  _$PositionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holdId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      holdId: freezed == holdId
          ? _value.holdId
          : holdId // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionsImplCopyWith<$Res>
    implements $PositionsCopyWith<$Res> {
  factory _$$PositionsImplCopyWith(
          _$PositionsImpl value, $Res Function(_$PositionsImpl) then) =
      __$$PositionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'HoldID') String? holdId,
      @JsonKey(name: 'Qty') int? qty});
}

/// @nodoc
class __$$PositionsImplCopyWithImpl<$Res>
    extends _$PositionsCopyWithImpl<$Res, _$PositionsImpl>
    implements _$$PositionsImplCopyWith<$Res> {
  __$$PositionsImplCopyWithImpl(
      _$PositionsImpl _value, $Res Function(_$PositionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holdId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$PositionsImpl(
      holdId: freezed == holdId
          ? _value.holdId
          : holdId // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionsImpl implements _Positions {
  const _$PositionsImpl(
      {@JsonKey(name: 'HoldID') this.holdId, @JsonKey(name: 'Qty') this.qty});

  factory _$PositionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionsImplFromJson(json);

  @override
  @JsonKey(name: 'HoldID')
  final String? holdId;
  @override
  @JsonKey(name: 'Qty')
  final int? qty;

  @override
  String toString() {
    return 'Positions(holdId: $holdId, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionsImpl &&
            (identical(other.holdId, holdId) || other.holdId == holdId) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, holdId, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionsImplCopyWith<_$PositionsImpl> get copyWith =>
      __$$PositionsImplCopyWithImpl<_$PositionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionsImplToJson(
      this,
    );
  }
}

abstract class _Positions implements Positions {
  const factory _Positions(
      {@JsonKey(name: 'HoldID') final String? holdId,
      @JsonKey(name: 'Qty') final int? qty}) = _$PositionsImpl;

  factory _Positions.fromJson(Map<String, dynamic> json) =
      _$PositionsImpl.fromJson;

  @override
  @JsonKey(name: 'HoldID')
  String? get holdId;
  @override
  @JsonKey(name: 'Qty')
  int? get qty;
  @override
  @JsonKey(ignore: true)
  _$$PositionsImplCopyWith<_$PositionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
