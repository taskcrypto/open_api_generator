// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positions_deriv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositionsDeriv _$PositionsDerivFromJson(Map<String, dynamic> json) {
  return _PositionsDeriv.fromJson(json);
}

/// @nodoc
mixin _$PositionsDeriv {
  @JsonKey(name: 'HoldID')
  String? get holdId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Qty')
  int? get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionsDerivCopyWith<PositionsDeriv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionsDerivCopyWith<$Res> {
  factory $PositionsDerivCopyWith(
          PositionsDeriv value, $Res Function(PositionsDeriv) then) =
      _$PositionsDerivCopyWithImpl<$Res, PositionsDeriv>;
  @useResult
  $Res call(
      {@JsonKey(name: 'HoldID') String? holdId,
      @JsonKey(name: 'Qty') int? qty});
}

/// @nodoc
class _$PositionsDerivCopyWithImpl<$Res, $Val extends PositionsDeriv>
    implements $PositionsDerivCopyWith<$Res> {
  _$PositionsDerivCopyWithImpl(this._value, this._then);

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
abstract class _$$PositionsDerivImplCopyWith<$Res>
    implements $PositionsDerivCopyWith<$Res> {
  factory _$$PositionsDerivImplCopyWith(_$PositionsDerivImpl value,
          $Res Function(_$PositionsDerivImpl) then) =
      __$$PositionsDerivImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'HoldID') String? holdId,
      @JsonKey(name: 'Qty') int? qty});
}

/// @nodoc
class __$$PositionsDerivImplCopyWithImpl<$Res>
    extends _$PositionsDerivCopyWithImpl<$Res, _$PositionsDerivImpl>
    implements _$$PositionsDerivImplCopyWith<$Res> {
  __$$PositionsDerivImplCopyWithImpl(
      _$PositionsDerivImpl _value, $Res Function(_$PositionsDerivImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holdId = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$PositionsDerivImpl(
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
class _$PositionsDerivImpl implements _PositionsDeriv {
  const _$PositionsDerivImpl(
      {@JsonKey(name: 'HoldID') this.holdId, @JsonKey(name: 'Qty') this.qty});

  factory _$PositionsDerivImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionsDerivImplFromJson(json);

  @override
  @JsonKey(name: 'HoldID')
  final String? holdId;
  @override
  @JsonKey(name: 'Qty')
  final int? qty;

  @override
  String toString() {
    return 'PositionsDeriv(holdId: $holdId, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionsDerivImpl &&
            (identical(other.holdId, holdId) || other.holdId == holdId) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, holdId, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionsDerivImplCopyWith<_$PositionsDerivImpl> get copyWith =>
      __$$PositionsDerivImplCopyWithImpl<_$PositionsDerivImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionsDerivImplToJson(
      this,
    );
  }
}

abstract class _PositionsDeriv implements PositionsDeriv {
  const factory _PositionsDeriv(
      {@JsonKey(name: 'HoldID') final String? holdId,
      @JsonKey(name: 'Qty') final int? qty}) = _$PositionsDerivImpl;

  factory _PositionsDeriv.fromJson(Map<String, dynamic> json) =
      _$PositionsDerivImpl.fromJson;

  @override
  @JsonKey(name: 'HoldID')
  String? get holdId;
  @override
  @JsonKey(name: 'Qty')
  int? get qty;
  @override
  @JsonKey(ignore: true)
  _$$PositionsDerivImplCopyWith<_$PositionsDerivImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
