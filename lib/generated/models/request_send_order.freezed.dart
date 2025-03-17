// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_send_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestSendOrder _$RequestSendOrderFromJson(Map<String, dynamic> json) {
  return _RequestSendOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestSendOrder {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'Exchange')
  int? get exchange => throw _privateConstructorUsedError;
  @JsonKey(name: 'SecurityType')
  int? get securityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Side')
  String? get side => throw _privateConstructorUsedError;
  @JsonKey(name: 'CashMargin')
  int? get cashMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginTradeType')
  int? get marginTradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginPremiumUnit')
  double? get marginPremiumUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'DelivType')
  int? get delivType => throw _privateConstructorUsedError;
  @JsonKey(name: 'FundType')
  String? get fundType => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountType')
  int? get accountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Qty')
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClosePositionOrder')
  int? get closePositionOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClosePositions')
  List<dynamic>? get closePositions => throw _privateConstructorUsedError;
  @JsonKey(name: 'FrontOrderType')
  int? get frontOrderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpireDay')
  int? get expireDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'ReverseLimitOrder')
  Map<String, dynamic>? get reverseLimitOrder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSendOrderCopyWith<RequestSendOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSendOrderCopyWith<$Res> {
  factory $RequestSendOrderCopyWith(
          RequestSendOrder value, $Res Function(RequestSendOrder) then) =
      _$RequestSendOrderCopyWithImpl<$Res, RequestSendOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Exchange') int? exchange,
      @JsonKey(name: 'SecurityType') int? securityType,
      @JsonKey(name: 'Side') String? side,
      @JsonKey(name: 'CashMargin') int? cashMargin,
      @JsonKey(name: 'MarginTradeType') int? marginTradeType,
      @JsonKey(name: 'MarginPremiumUnit') double? marginPremiumUnit,
      @JsonKey(name: 'DelivType') int? delivType,
      @JsonKey(name: 'FundType') String? fundType,
      @JsonKey(name: 'AccountType') int? accountType,
      @JsonKey(name: 'Qty') int? qty,
      @JsonKey(name: 'ClosePositionOrder') int? closePositionOrder,
      @JsonKey(name: 'ClosePositions') List<dynamic>? closePositions,
      @JsonKey(name: 'FrontOrderType') int? frontOrderType,
      @JsonKey(name: 'Price') double? price,
      @JsonKey(name: 'ExpireDay') int? expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      Map<String, dynamic>? reverseLimitOrder});
}

/// @nodoc
class _$RequestSendOrderCopyWithImpl<$Res, $Val extends RequestSendOrder>
    implements $RequestSendOrderCopyWith<$Res> {
  _$RequestSendOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? exchange = freezed,
    Object? securityType = freezed,
    Object? side = freezed,
    Object? cashMargin = freezed,
    Object? marginTradeType = freezed,
    Object? marginPremiumUnit = freezed,
    Object? delivType = freezed,
    Object? fundType = freezed,
    Object? accountType = freezed,
    Object? qty = freezed,
    Object? closePositionOrder = freezed,
    Object? closePositions = freezed,
    Object? frontOrderType = freezed,
    Object? price = freezed,
    Object? expireDay = freezed,
    Object? reverseLimitOrder = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int?,
      securityType: freezed == securityType
          ? _value.securityType
          : securityType // ignore: cast_nullable_to_non_nullable
              as int?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String?,
      cashMargin: freezed == cashMargin
          ? _value.cashMargin
          : cashMargin // ignore: cast_nullable_to_non_nullable
              as int?,
      marginTradeType: freezed == marginTradeType
          ? _value.marginTradeType
          : marginTradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marginPremiumUnit: freezed == marginPremiumUnit
          ? _value.marginPremiumUnit
          : marginPremiumUnit // ignore: cast_nullable_to_non_nullable
              as double?,
      delivType: freezed == delivType
          ? _value.delivType
          : delivType // ignore: cast_nullable_to_non_nullable
              as int?,
      fundType: freezed == fundType
          ? _value.fundType
          : fundType // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositionOrder: freezed == closePositionOrder
          ? _value.closePositionOrder
          : closePositionOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositions: freezed == closePositions
          ? _value.closePositions
          : closePositions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      frontOrderType: freezed == frontOrderType
          ? _value.frontOrderType
          : frontOrderType // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      expireDay: freezed == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int?,
      reverseLimitOrder: freezed == reverseLimitOrder
          ? _value.reverseLimitOrder
          : reverseLimitOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestSendOrderImplCopyWith<$Res>
    implements $RequestSendOrderCopyWith<$Res> {
  factory _$$RequestSendOrderImplCopyWith(_$RequestSendOrderImpl value,
          $Res Function(_$RequestSendOrderImpl) then) =
      __$$RequestSendOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Exchange') int? exchange,
      @JsonKey(name: 'SecurityType') int? securityType,
      @JsonKey(name: 'Side') String? side,
      @JsonKey(name: 'CashMargin') int? cashMargin,
      @JsonKey(name: 'MarginTradeType') int? marginTradeType,
      @JsonKey(name: 'MarginPremiumUnit') double? marginPremiumUnit,
      @JsonKey(name: 'DelivType') int? delivType,
      @JsonKey(name: 'FundType') String? fundType,
      @JsonKey(name: 'AccountType') int? accountType,
      @JsonKey(name: 'Qty') int? qty,
      @JsonKey(name: 'ClosePositionOrder') int? closePositionOrder,
      @JsonKey(name: 'ClosePositions') List<dynamic>? closePositions,
      @JsonKey(name: 'FrontOrderType') int? frontOrderType,
      @JsonKey(name: 'Price') double? price,
      @JsonKey(name: 'ExpireDay') int? expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      Map<String, dynamic>? reverseLimitOrder});
}

/// @nodoc
class __$$RequestSendOrderImplCopyWithImpl<$Res>
    extends _$RequestSendOrderCopyWithImpl<$Res, _$RequestSendOrderImpl>
    implements _$$RequestSendOrderImplCopyWith<$Res> {
  __$$RequestSendOrderImplCopyWithImpl(_$RequestSendOrderImpl _value,
      $Res Function(_$RequestSendOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? exchange = freezed,
    Object? securityType = freezed,
    Object? side = freezed,
    Object? cashMargin = freezed,
    Object? marginTradeType = freezed,
    Object? marginPremiumUnit = freezed,
    Object? delivType = freezed,
    Object? fundType = freezed,
    Object? accountType = freezed,
    Object? qty = freezed,
    Object? closePositionOrder = freezed,
    Object? closePositions = freezed,
    Object? frontOrderType = freezed,
    Object? price = freezed,
    Object? expireDay = freezed,
    Object? reverseLimitOrder = freezed,
  }) {
    return _then(_$RequestSendOrderImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int?,
      securityType: freezed == securityType
          ? _value.securityType
          : securityType // ignore: cast_nullable_to_non_nullable
              as int?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String?,
      cashMargin: freezed == cashMargin
          ? _value.cashMargin
          : cashMargin // ignore: cast_nullable_to_non_nullable
              as int?,
      marginTradeType: freezed == marginTradeType
          ? _value.marginTradeType
          : marginTradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marginPremiumUnit: freezed == marginPremiumUnit
          ? _value.marginPremiumUnit
          : marginPremiumUnit // ignore: cast_nullable_to_non_nullable
              as double?,
      delivType: freezed == delivType
          ? _value.delivType
          : delivType // ignore: cast_nullable_to_non_nullable
              as int?,
      fundType: freezed == fundType
          ? _value.fundType
          : fundType // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositionOrder: freezed == closePositionOrder
          ? _value.closePositionOrder
          : closePositionOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      closePositions: freezed == closePositions
          ? _value._closePositions
          : closePositions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      frontOrderType: freezed == frontOrderType
          ? _value.frontOrderType
          : frontOrderType // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      expireDay: freezed == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int?,
      reverseLimitOrder: freezed == reverseLimitOrder
          ? _value._reverseLimitOrder
          : reverseLimitOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestSendOrderImpl implements _RequestSendOrder {
  const _$RequestSendOrderImpl(
      {@JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'Exchange') this.exchange,
      @JsonKey(name: 'SecurityType') this.securityType,
      @JsonKey(name: 'Side') this.side,
      @JsonKey(name: 'CashMargin') this.cashMargin,
      @JsonKey(name: 'MarginTradeType') this.marginTradeType,
      @JsonKey(name: 'MarginPremiumUnit') this.marginPremiumUnit,
      @JsonKey(name: 'DelivType') this.delivType,
      @JsonKey(name: 'FundType') this.fundType,
      @JsonKey(name: 'AccountType') this.accountType,
      @JsonKey(name: 'Qty') this.qty,
      @JsonKey(name: 'ClosePositionOrder') this.closePositionOrder,
      @JsonKey(name: 'ClosePositions') final List<dynamic>? closePositions,
      @JsonKey(name: 'FrontOrderType') this.frontOrderType,
      @JsonKey(name: 'Price') this.price,
      @JsonKey(name: 'ExpireDay') this.expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      final Map<String, dynamic>? reverseLimitOrder})
      : _closePositions = closePositions,
        _reverseLimitOrder = reverseLimitOrder;

  factory _$RequestSendOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestSendOrderImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'Exchange')
  final int? exchange;
  @override
  @JsonKey(name: 'SecurityType')
  final int? securityType;
  @override
  @JsonKey(name: 'Side')
  final String? side;
  @override
  @JsonKey(name: 'CashMargin')
  final int? cashMargin;
  @override
  @JsonKey(name: 'MarginTradeType')
  final int? marginTradeType;
  @override
  @JsonKey(name: 'MarginPremiumUnit')
  final double? marginPremiumUnit;
  @override
  @JsonKey(name: 'DelivType')
  final int? delivType;
  @override
  @JsonKey(name: 'FundType')
  final String? fundType;
  @override
  @JsonKey(name: 'AccountType')
  final int? accountType;
  @override
  @JsonKey(name: 'Qty')
  final int? qty;
  @override
  @JsonKey(name: 'ClosePositionOrder')
  final int? closePositionOrder;
  final List<dynamic>? _closePositions;
  @override
  @JsonKey(name: 'ClosePositions')
  List<dynamic>? get closePositions {
    final value = _closePositions;
    if (value == null) return null;
    if (_closePositions is EqualUnmodifiableListView) return _closePositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'FrontOrderType')
  final int? frontOrderType;
  @override
  @JsonKey(name: 'Price')
  final double? price;
  @override
  @JsonKey(name: 'ExpireDay')
  final int? expireDay;
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
    return 'RequestSendOrder(symbol: $symbol, exchange: $exchange, securityType: $securityType, side: $side, cashMargin: $cashMargin, marginTradeType: $marginTradeType, marginPremiumUnit: $marginPremiumUnit, delivType: $delivType, fundType: $fundType, accountType: $accountType, qty: $qty, closePositionOrder: $closePositionOrder, closePositions: $closePositions, frontOrderType: $frontOrderType, price: $price, expireDay: $expireDay, reverseLimitOrder: $reverseLimitOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSendOrderImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.securityType, securityType) ||
                other.securityType == securityType) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.cashMargin, cashMargin) ||
                other.cashMargin == cashMargin) &&
            (identical(other.marginTradeType, marginTradeType) ||
                other.marginTradeType == marginTradeType) &&
            (identical(other.marginPremiumUnit, marginPremiumUnit) ||
                other.marginPremiumUnit == marginPremiumUnit) &&
            (identical(other.delivType, delivType) ||
                other.delivType == delivType) &&
            (identical(other.fundType, fundType) ||
                other.fundType == fundType) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
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
      securityType,
      side,
      cashMargin,
      marginTradeType,
      marginPremiumUnit,
      delivType,
      fundType,
      accountType,
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
  _$$RequestSendOrderImplCopyWith<_$RequestSendOrderImpl> get copyWith =>
      __$$RequestSendOrderImplCopyWithImpl<_$RequestSendOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestSendOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestSendOrder implements RequestSendOrder {
  const factory _RequestSendOrder(
      {@JsonKey(name: 'Symbol') final String? symbol,
      @JsonKey(name: 'Exchange') final int? exchange,
      @JsonKey(name: 'SecurityType') final int? securityType,
      @JsonKey(name: 'Side') final String? side,
      @JsonKey(name: 'CashMargin') final int? cashMargin,
      @JsonKey(name: 'MarginTradeType') final int? marginTradeType,
      @JsonKey(name: 'MarginPremiumUnit') final double? marginPremiumUnit,
      @JsonKey(name: 'DelivType') final int? delivType,
      @JsonKey(name: 'FundType') final String? fundType,
      @JsonKey(name: 'AccountType') final int? accountType,
      @JsonKey(name: 'Qty') final int? qty,
      @JsonKey(name: 'ClosePositionOrder') final int? closePositionOrder,
      @JsonKey(name: 'ClosePositions') final List<dynamic>? closePositions,
      @JsonKey(name: 'FrontOrderType') final int? frontOrderType,
      @JsonKey(name: 'Price') final double? price,
      @JsonKey(name: 'ExpireDay') final int? expireDay,
      @JsonKey(name: 'ReverseLimitOrder')
      final Map<String, dynamic>? reverseLimitOrder}) = _$RequestSendOrderImpl;

  factory _RequestSendOrder.fromJson(Map<String, dynamic> json) =
      _$RequestSendOrderImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'Exchange')
  int? get exchange;
  @override
  @JsonKey(name: 'SecurityType')
  int? get securityType;
  @override
  @JsonKey(name: 'Side')
  String? get side;
  @override
  @JsonKey(name: 'CashMargin')
  int? get cashMargin;
  @override
  @JsonKey(name: 'MarginTradeType')
  int? get marginTradeType;
  @override
  @JsonKey(name: 'MarginPremiumUnit')
  double? get marginPremiumUnit;
  @override
  @JsonKey(name: 'DelivType')
  int? get delivType;
  @override
  @JsonKey(name: 'FundType')
  String? get fundType;
  @override
  @JsonKey(name: 'AccountType')
  int? get accountType;
  @override
  @JsonKey(name: 'Qty')
  int? get qty;
  @override
  @JsonKey(name: 'ClosePositionOrder')
  int? get closePositionOrder;
  @override
  @JsonKey(name: 'ClosePositions')
  List<dynamic>? get closePositions;
  @override
  @JsonKey(name: 'FrontOrderType')
  int? get frontOrderType;
  @override
  @JsonKey(name: 'Price')
  double? get price;
  @override
  @JsonKey(name: 'ExpireDay')
  int? get expireDay;
  @override
  @JsonKey(name: 'ReverseLimitOrder')
  Map<String, dynamic>? get reverseLimitOrder;
  @override
  @JsonKey(ignore: true)
  _$$RequestSendOrderImplCopyWith<_$RequestSendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
