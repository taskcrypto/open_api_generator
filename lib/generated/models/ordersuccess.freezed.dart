// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordersuccess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderSuccess _$OrderSuccessFromJson(Map<String, dynamic> json) {
  return _OrderSuccess.fromJson(json);
}

/// @nodoc
mixin _$OrderSuccess {
  @JsonKey(name: 'Result')
  int? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderId')
  String? get orderID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSuccessCopyWith<OrderSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSuccessCopyWith<$Res> {
  factory $OrderSuccessCopyWith(
          OrderSuccess value, $Res Function(OrderSuccess) then) =
      _$OrderSuccessCopyWithImpl<$Res, OrderSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Result') int? result,
      @JsonKey(name: 'OrderId') String? orderID});
}

/// @nodoc
class _$OrderSuccessCopyWithImpl<$Res, $Val extends OrderSuccess>
    implements $OrderSuccessCopyWith<$Res> {
  _$OrderSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? orderID = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderSuccessImplCopyWith<$Res>
    implements $OrderSuccessCopyWith<$Res> {
  factory _$$OrderSuccessImplCopyWith(
          _$OrderSuccessImpl value, $Res Function(_$OrderSuccessImpl) then) =
      __$$OrderSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Result') int? result,
      @JsonKey(name: 'OrderId') String? orderID});
}

/// @nodoc
class __$$OrderSuccessImplCopyWithImpl<$Res>
    extends _$OrderSuccessCopyWithImpl<$Res, _$OrderSuccessImpl>
    implements _$$OrderSuccessImplCopyWith<$Res> {
  __$$OrderSuccessImplCopyWithImpl(
      _$OrderSuccessImpl _value, $Res Function(_$OrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? orderID = freezed,
  }) {
    return _then(_$OrderSuccessImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderSuccessImpl implements _OrderSuccess {
  const _$OrderSuccessImpl(
      {@JsonKey(name: 'Result') this.result,
      @JsonKey(name: 'OrderId') this.orderID});

  factory _$OrderSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'Result')
  final int? result;
  @override
  @JsonKey(name: 'OrderId')
  final String? orderID;

  @override
  String toString() {
    return 'OrderSuccess(result: $result, orderID: $orderID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSuccessImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.orderID, orderID) || other.orderID == orderID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, orderID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSuccessImplCopyWith<_$OrderSuccessImpl> get copyWith =>
      __$$OrderSuccessImplCopyWithImpl<_$OrderSuccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderSuccessImplToJson(
      this,
    );
  }
}

abstract class _OrderSuccess implements OrderSuccess {
  const factory _OrderSuccess(
      {@JsonKey(name: 'Result') final int? result,
      @JsonKey(name: 'OrderId') final String? orderID}) = _$OrderSuccessImpl;

  factory _OrderSuccess.fromJson(Map<String, dynamic> json) =
      _$OrderSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'Result')
  int? get result;
  @override
  @JsonKey(name: 'OrderId')
  String? get orderID;
  @override
  @JsonKey(ignore: true)
  _$$OrderSuccessImplCopyWith<_$OrderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
