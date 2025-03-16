// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_send_order_deriv_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestSendOrderDerivOption _$RequestSendOrderDerivOptionFromJson(
    Map<String, dynamic> json) {
  return _RequestSendOrderDerivOption.fromJson(json);
}

/// @nodoc
mixin _$RequestSendOrderDerivOption {
  @JsonKey(name: 'Symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'Exchange')
  int get exchange => throw _privateConstructorUsedError;
  @JsonKey(name: 'TradeType')
  int get tradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'TimeInForce')
  int get timeInForce => throw _privateConstructorUsedError;
  @JsonKey(name: 'Side')
  String get side => throw _privateConstructorUsedError;
  @JsonKey(name: 'Qty')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClosePositionOrder')
  int? get closePositionOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClosePositions')
  List<PositionsDeriv>? get closePositions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'FrontOrderType')
  int get frontOrderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpireDay')
  int get expireDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'ReverseLimitOrder')
  Map<String, dynamic>? get reverseLimitOrder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSendOrderDerivOptionCopyWith<RequestSendOrderDerivOption>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSendOrderDerivOptionCopyWith<$Res> {
  factory $RequestSendOrderDerivOptionCopyWith(
          RequestSendOrderDerivOption value,
          $Res Function(RequestSendOrderDerivOption) then) =
      _$RequestSendOrderDerivOptionCopyWithImpl<$Res,
          RequestSendOrderDerivOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String symbol,
      @JsonKey(name: 'Exchange') int exchange,
      @JsonKey(name: 'TradeType') int tradeType,
      @JsonKey(name: 'TimeInForce') int timeInForce,
      @JsonKey(name: 'Side') String side,
      @JsonKey(name: 'Qty') int qty,
      @JsonKey(name: 'ClosePositionOrder') int? closePositionOrder,
      @JsonKey(name: 'ClosePositions') List<PositionsDeriv>? closePositions,
      @JsonKey(name: 'FrontOrderType') int frontOrderType,
      @JsonKey(name: 'Price') double price,
      @JsonKey(name: 'ExpireDay') int expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      Map<String, dynamic>? reverseLimitOrder});
}

/// @nodoc
class _$RequestSendOrderDerivOptionCopyWithImpl<$Res,
        $Val extends RequestSendOrderDerivOption>
    implements $RequestSendOrderDerivOptionCopyWith<$Res> {
  _$RequestSendOrderDerivOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? exchange = null,
    Object? tradeType = null,
    Object? timeInForce = null,
    Object? side = null,
    Object? qty = null,
    Object? closePositionOrder = freezed,
    Object? closePositions = freezed,
    Object? frontOrderType = null,
    Object? price = null,
    Object? expireDay = null,
    Object? reverseLimitOrder = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as int,
      timeInForce: null == timeInForce
          ? _value.timeInForce
          : timeInForce // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      closePositionOrder: freezed == closePositionOrder
          ? _value.closePositionOrder
          : closePositionOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositions: freezed == closePositions
          ? _value.closePositions
          : closePositions // ignore: cast_nullable_to_non_nullable
              as List<PositionsDeriv>?,
      frontOrderType: null == frontOrderType
          ? _value.frontOrderType
          : frontOrderType // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      expireDay: null == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int,
      reverseLimitOrder: freezed == reverseLimitOrder
          ? _value.reverseLimitOrder
          : reverseLimitOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestSendOrderDerivOptionImplCopyWith<$Res>
    implements $RequestSendOrderDerivOptionCopyWith<$Res> {
  factory _$$RequestSendOrderDerivOptionImplCopyWith(
          _$RequestSendOrderDerivOptionImpl value,
          $Res Function(_$RequestSendOrderDerivOptionImpl) then) =
      __$$RequestSendOrderDerivOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String symbol,
      @JsonKey(name: 'Exchange') int exchange,
      @JsonKey(name: 'TradeType') int tradeType,
      @JsonKey(name: 'TimeInForce') int timeInForce,
      @JsonKey(name: 'Side') String side,
      @JsonKey(name: 'Qty') int qty,
      @JsonKey(name: 'ClosePositionOrder') int? closePositionOrder,
      @JsonKey(name: 'ClosePositions') List<PositionsDeriv>? closePositions,
      @JsonKey(name: 'FrontOrderType') int frontOrderType,
      @JsonKey(name: 'Price') double price,
      @JsonKey(name: 'ExpireDay') int expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      Map<String, dynamic>? reverseLimitOrder});
}

/// @nodoc
class __$$RequestSendOrderDerivOptionImplCopyWithImpl<$Res>
    extends _$RequestSendOrderDerivOptionCopyWithImpl<$Res,
        _$RequestSendOrderDerivOptionImpl>
    implements _$$RequestSendOrderDerivOptionImplCopyWith<$Res> {
  __$$RequestSendOrderDerivOptionImplCopyWithImpl(
      _$RequestSendOrderDerivOptionImpl _value,
      $Res Function(_$RequestSendOrderDerivOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? exchange = null,
    Object? tradeType = null,
    Object? timeInForce = null,
    Object? side = null,
    Object? qty = null,
    Object? closePositionOrder = freezed,
    Object? closePositions = freezed,
    Object? frontOrderType = null,
    Object? price = null,
    Object? expireDay = null,
    Object? reverseLimitOrder = freezed,
  }) {
    return _then(_$RequestSendOrderDerivOptionImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as int,
      timeInForce: null == timeInForce
          ? _value.timeInForce
          : timeInForce // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      closePositionOrder: freezed == closePositionOrder
          ? _value.closePositionOrder
          : closePositionOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositions: freezed == closePositions
          ? _value._closePositions
          : closePositions // ignore: cast_nullable_to_non_nullable
              as List<PositionsDeriv>?,
      frontOrderType: null == frontOrderType
          ? _value.frontOrderType
          : frontOrderType // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      expireDay: null == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int,
      reverseLimitOrder: freezed == reverseLimitOrder
          ? _value._reverseLimitOrder
          : reverseLimitOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestSendOrderDerivOptionImpl
    implements _RequestSendOrderDerivOption {
  const _$RequestSendOrderDerivOptionImpl(
      {@JsonKey(name: 'Symbol') required this.symbol,
      @JsonKey(name: 'Exchange') required this.exchange,
      @JsonKey(name: 'TradeType') required this.tradeType,
      @JsonKey(name: 'TimeInForce') required this.timeInForce,
      @JsonKey(name: 'Side') required this.side,
      @JsonKey(name: 'Qty') required this.qty,
      @JsonKey(name: 'ClosePositionOrder') this.closePositionOrder,
      @JsonKey(name: 'ClosePositions')
      final List<PositionsDeriv>? closePositions,
      @JsonKey(name: 'FrontOrderType') required this.frontOrderType,
      @JsonKey(name: 'Price') required this.price,
      @JsonKey(name: 'ExpireDay') required this.expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      final Map<String, dynamic>? reverseLimitOrder})
      : _closePositions = closePositions,
        _reverseLimitOrder = reverseLimitOrder;

  factory _$RequestSendOrderDerivOptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestSendOrderDerivOptionImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String symbol;
  @override
  @JsonKey(name: 'Exchange')
  final int exchange;
  @override
  @JsonKey(name: 'TradeType')
  final int tradeType;
  @override
  @JsonKey(name: 'TimeInForce')
  final int timeInForce;
  @override
  @JsonKey(name: 'Side')
  final String side;
  @override
  @JsonKey(name: 'Qty')
  final int qty;
  @override
  @JsonKey(name: 'ClosePositionOrder')
  final int? closePositionOrder;
  final List<PositionsDeriv>? _closePositions;
  @override
  @JsonKey(name: 'ClosePositions')
  List<PositionsDeriv>? get closePositions {
    final value = _closePositions;
    if (value == null) return null;
    if (_closePositions is EqualUnmodifiableListView) return _closePositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'FrontOrderType')
  final int frontOrderType;
  @override
  @JsonKey(name: 'Price')
  final double price;
  @override
  @JsonKey(name: 'ExpireDay')
  final int expireDay;
  final Map<String, dynamic>? _reverseLimitOrder;
  @override
  @JsonKey(name: 'ReverseLimitOrder')
  Map<String, dynamic>? get reverseLimitOrder {
    final value = _reverseLimitOrder;
    if (value == null) return null;
    if (_reverseLimitOrder is EqualUnmodifiableMapView)
      return _reverseLimitOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestSendOrderDerivOption(symbol: $symbol, exchange: $exchange, tradeType: $tradeType, timeInForce: $timeInForce, side: $side, qty: $qty, closePositionOrder: $closePositionOrder, closePositions: $closePositions, frontOrderType: $frontOrderType, price: $price, expireDay: $expireDay, reverseLimitOrder: $reverseLimitOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSendOrderDerivOptionImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.tradeType, tradeType) ||
                other.tradeType == tradeType) &&
            (identical(other.timeInForce, timeInForce) ||
                other.timeInForce == timeInForce) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.closePositionOrder, closePositionOrder) ||
                other.closePositionOrder == closePositionOrder) &&
            const DeepCollectionEquality()
                .equals(other._closePositions, _closePositions) &&
            (identical(other.frontOrderType, frontOrderType) ||
                other.frontOrderType == frontOrderType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.expireDay, expireDay) ||
                other.expireDay == expireDay) &&
            const DeepCollectionEquality()
                .equals(other._reverseLimitOrder, _reverseLimitOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      exchange,
      tradeType,
      timeInForce,
      side,
      qty,
      closePositionOrder,
      const DeepCollectionEquality().hash(_closePositions),
      frontOrderType,
      price,
      expireDay,
      const DeepCollectionEquality().hash(_reverseLimitOrder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSendOrderDerivOptionImplCopyWith<_$RequestSendOrderDerivOptionImpl>
      get copyWith => __$$RequestSendOrderDerivOptionImplCopyWithImpl<
          _$RequestSendOrderDerivOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestSendOrderDerivOptionImplToJson(
      this,
    );
  }
}

abstract class _RequestSendOrderDerivOption
    implements RequestSendOrderDerivOption {
  const factory _RequestSendOrderDerivOption(
          {@JsonKey(name: 'Symbol') required final String symbol,
          @JsonKey(name: 'Exchange') required final int exchange,
          @JsonKey(name: 'TradeType') required final int tradeType,
          @JsonKey(name: 'TimeInForce') required final int timeInForce,
          @JsonKey(name: 'Side') required final String side,
          @JsonKey(name: 'Qty') required final int qty,
          @JsonKey(name: 'ClosePositionOrder') final int? closePositionOrder,
          @JsonKey(name: 'ClosePositions')
          final List<PositionsDeriv>? closePositions,
          @JsonKey(name: 'FrontOrderType') required final int frontOrderType,
          @JsonKey(name: 'Price') required final double price,
          @JsonKey(name: 'ExpireDay') required final int expireDay,
          @JsonKey(name: 'ReverseLimitOrder')
          final Map<String, dynamic>? reverseLimitOrder}) =
      _$RequestSendOrderDerivOptionImpl;

  factory _RequestSendOrderDerivOption.fromJson(Map<String, dynamic> json) =
      _$RequestSendOrderDerivOptionImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String get symbol;
  @override
  @JsonKey(name: 'Exchange')
  int get exchange;
  @override
  @JsonKey(name: 'TradeType')
  int get tradeType;
  @override
  @JsonKey(name: 'TimeInForce')
  int get timeInForce;
  @override
  @JsonKey(name: 'Side')
  String get side;
  @override
  @JsonKey(name: 'Qty')
  int get qty;
  @override
  @JsonKey(name: 'ClosePositionOrder')
  int? get closePositionOrder;
  @override
  @JsonKey(name: 'ClosePositions')
  List<PositionsDeriv>? get closePositions;
  @override
  @JsonKey(name: 'FrontOrderType')
  int get frontOrderType;
  @override
  @JsonKey(name: 'Price')
  double get price;
  @override
  @JsonKey(name: 'ExpireDay')
  int get expireDay;
  @override
  @JsonKey(name: 'ReverseLimitOrder')
  Map<String, dynamic>? get reverseLimitOrder;
  @override
  @JsonKey(ignore: true)
  _$$RequestSendOrderDerivOptionImplCopyWith<_$RequestSendOrderDerivOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
