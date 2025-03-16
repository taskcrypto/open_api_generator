// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_cancel_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCancelOrder _$RequestCancelOrderFromJson(Map<String, dynamic> json) {
  return _RequestCancelOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCancelOrder {
  @JsonKey(name: 'OrderId')
  String get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCancelOrderCopyWith<RequestCancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCancelOrderCopyWith<$Res> {
  factory $RequestCancelOrderCopyWith(
          RequestCancelOrder value, $Res Function(RequestCancelOrder) then) =
      _$RequestCancelOrderCopyWithImpl<$Res, RequestCancelOrder>;
  @useResult
  $Res call({@JsonKey(name: 'OrderId') String orderId});
}

/// @nodoc
class _$RequestCancelOrderCopyWithImpl<$Res, $Val extends RequestCancelOrder>
    implements $RequestCancelOrderCopyWith<$Res> {
  _$RequestCancelOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCancelOrderImplCopyWith<$Res>
    implements $RequestCancelOrderCopyWith<$Res> {
  factory _$$RequestCancelOrderImplCopyWith(_$RequestCancelOrderImpl value,
          $Res Function(_$RequestCancelOrderImpl) then) =
      __$$RequestCancelOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'OrderId') String orderId});
}

/// @nodoc
class __$$RequestCancelOrderImplCopyWithImpl<$Res>
    extends _$RequestCancelOrderCopyWithImpl<$Res, _$RequestCancelOrderImpl>
    implements _$$RequestCancelOrderImplCopyWith<$Res> {
  __$$RequestCancelOrderImplCopyWithImpl(_$RequestCancelOrderImpl _value,
      $Res Function(_$RequestCancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$RequestCancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCancelOrderImpl implements _RequestCancelOrder {
  const _$RequestCancelOrderImpl(
      {@JsonKey(name: 'OrderId') required this.orderId});

  factory _$RequestCancelOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCancelOrderImplFromJson(json);

  @override
  @JsonKey(name: 'OrderId')
  final String orderId;

  @override
  String toString() {
    return 'RequestCancelOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelOrderImplCopyWith<_$RequestCancelOrderImpl> get copyWith =>
      __$$RequestCancelOrderImplCopyWithImpl<_$RequestCancelOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCancelOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCancelOrder implements RequestCancelOrder {
  const factory _RequestCancelOrder(
          {@JsonKey(name: 'OrderId') required final String orderId}) =
      _$RequestCancelOrderImpl;

  factory _RequestCancelOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCancelOrderImpl.fromJson;

  @override
  @JsonKey(name: 'OrderId')
  String get orderId;
  @override
  @JsonKey(ignore: true)
  _$$RequestCancelOrderImplCopyWith<_$RequestCancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
