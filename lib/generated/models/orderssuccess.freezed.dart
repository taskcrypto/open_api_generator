// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderssuccess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersSuccess _$OrdersSuccessFromJson(Map<String, dynamic> json) {
  return _OrdersSuccess.fromJson(json);
}

/// @nodoc
mixin _$OrdersSuccess {
  @JsonKey(name: 'ID')
  String? get iD => throw _privateConstructorUsedError;
  @JsonKey(name: 'State')
  int? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderState')
  int? get orderState => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrdType')
  int? get ordType => throw _privateConstructorUsedError;
  @JsonKey(name: 'RecvTime')
  String? get recvTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'SymbolName')
  String? get symbolName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Exchange')
  int? get exchange => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExchangeName')
  String? get exchangeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'TimeInForce')
  int? get timeInForce => throw _privateConstructorUsedError;
  @JsonKey(name: 'Price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderQty')
  double? get orderQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'CumQty')
  double? get cumQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'Side')
  String? get side => throw _privateConstructorUsedError;
  @JsonKey(name: 'CashMargin')
  int? get cashMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountType')
  int? get accountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DelivType')
  int? get delivType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpireDay')
  int? get expireDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginTradeType')
  int? get marginTradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginPremium')
  double? get marginPremium => throw _privateConstructorUsedError;
  @JsonKey(name: 'Details')
  List<Map<String, dynamic>>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersSuccessCopyWith<OrdersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersSuccessCopyWith<$Res> {
  factory $OrdersSuccessCopyWith(
          OrdersSuccess value, $Res Function(OrdersSuccess) then) =
      _$OrdersSuccessCopyWithImpl<$Res, OrdersSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') String? iD,
      @JsonKey(name: 'State') int? state,
      @JsonKey(name: 'OrderState') int? orderState,
      @JsonKey(name: 'OrdType') int? ordType,
      @JsonKey(name: 'RecvTime') String? recvTime,
      @JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'SymbolName') String? symbolName,
      @JsonKey(name: 'Exchange') int? exchange,
      @JsonKey(name: 'ExchangeName') String? exchangeName,
      @JsonKey(name: 'TimeInForce') int? timeInForce,
      @JsonKey(name: 'Price') double? price,
      @JsonKey(name: 'OrderQty') double? orderQty,
      @JsonKey(name: 'CumQty') double? cumQty,
      @JsonKey(name: 'Side') String? side,
      @JsonKey(name: 'CashMargin') int? cashMargin,
      @JsonKey(name: 'AccountType') int? accountType,
      @JsonKey(name: 'DelivType') int? delivType,
      @JsonKey(name: 'ExpireDay') int? expireDay,
      @JsonKey(name: 'MarginTradeType') int? marginTradeType,
      @JsonKey(name: 'MarginPremium') double? marginPremium,
      @JsonKey(name: 'Details') List<Map<String, dynamic>>? details});
}

/// @nodoc
class _$OrdersSuccessCopyWithImpl<$Res, $Val extends OrdersSuccess>
    implements $OrdersSuccessCopyWith<$Res> {
  _$OrdersSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iD = freezed,
    Object? state = freezed,
    Object? orderState = freezed,
    Object? ordType = freezed,
    Object? recvTime = freezed,
    Object? symbol = freezed,
    Object? symbolName = freezed,
    Object? exchange = freezed,
    Object? exchangeName = freezed,
    Object? timeInForce = freezed,
    Object? price = freezed,
    Object? orderQty = freezed,
    Object? cumQty = freezed,
    Object? side = freezed,
    Object? cashMargin = freezed,
    Object? accountType = freezed,
    Object? delivType = freezed,
    Object? expireDay = freezed,
    Object? marginTradeType = freezed,
    Object? marginPremium = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      iD: freezed == iD
          ? _value.iD
          : iD // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      orderState: freezed == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as int?,
      ordType: freezed == ordType
          ? _value.ordType
          : ordType // ignore: cast_nullable_to_non_nullable
              as int?,
      recvTime: freezed == recvTime
          ? _value.recvTime
          : recvTime // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolName: freezed == symbolName
          ? _value.symbolName
          : symbolName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int?,
      exchangeName: freezed == exchangeName
          ? _value.exchangeName
          : exchangeName // ignore: cast_nullable_to_non_nullable
              as String?,
      timeInForce: freezed == timeInForce
          ? _value.timeInForce
          : timeInForce // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderQty: freezed == orderQty
          ? _value.orderQty
          : orderQty // ignore: cast_nullable_to_non_nullable
              as double?,
      cumQty: freezed == cumQty
          ? _value.cumQty
          : cumQty // ignore: cast_nullable_to_non_nullable
              as double?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String?,
      cashMargin: freezed == cashMargin
          ? _value.cashMargin
          : cashMargin // ignore: cast_nullable_to_non_nullable
              as int?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
      delivType: freezed == delivType
          ? _value.delivType
          : delivType // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDay: freezed == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int?,
      marginTradeType: freezed == marginTradeType
          ? _value.marginTradeType
          : marginTradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marginPremium: freezed == marginPremium
          ? _value.marginPremium
          : marginPremium // ignore: cast_nullable_to_non_nullable
              as double?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersSuccessImplCopyWith<$Res>
    implements $OrdersSuccessCopyWith<$Res> {
  factory _$$OrdersSuccessImplCopyWith(
          _$OrdersSuccessImpl value, $Res Function(_$OrdersSuccessImpl) then) =
      __$$OrdersSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') String? iD,
      @JsonKey(name: 'State') int? state,
      @JsonKey(name: 'OrderState') int? orderState,
      @JsonKey(name: 'OrdType') int? ordType,
      @JsonKey(name: 'RecvTime') String? recvTime,
      @JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'SymbolName') String? symbolName,
      @JsonKey(name: 'Exchange') int? exchange,
      @JsonKey(name: 'ExchangeName') String? exchangeName,
      @JsonKey(name: 'TimeInForce') int? timeInForce,
      @JsonKey(name: 'Price') double? price,
      @JsonKey(name: 'OrderQty') double? orderQty,
      @JsonKey(name: 'CumQty') double? cumQty,
      @JsonKey(name: 'Side') String? side,
      @JsonKey(name: 'CashMargin') int? cashMargin,
      @JsonKey(name: 'AccountType') int? accountType,
      @JsonKey(name: 'DelivType') int? delivType,
      @JsonKey(name: 'ExpireDay') int? expireDay,
      @JsonKey(name: 'MarginTradeType') int? marginTradeType,
      @JsonKey(name: 'MarginPremium') double? marginPremium,
      @JsonKey(name: 'Details') List<Map<String, dynamic>>? details});
}

/// @nodoc
class __$$OrdersSuccessImplCopyWithImpl<$Res>
    extends _$OrdersSuccessCopyWithImpl<$Res, _$OrdersSuccessImpl>
    implements _$$OrdersSuccessImplCopyWith<$Res> {
  __$$OrdersSuccessImplCopyWithImpl(
      _$OrdersSuccessImpl _value, $Res Function(_$OrdersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iD = freezed,
    Object? state = freezed,
    Object? orderState = freezed,
    Object? ordType = freezed,
    Object? recvTime = freezed,
    Object? symbol = freezed,
    Object? symbolName = freezed,
    Object? exchange = freezed,
    Object? exchangeName = freezed,
    Object? timeInForce = freezed,
    Object? price = freezed,
    Object? orderQty = freezed,
    Object? cumQty = freezed,
    Object? side = freezed,
    Object? cashMargin = freezed,
    Object? accountType = freezed,
    Object? delivType = freezed,
    Object? expireDay = freezed,
    Object? marginTradeType = freezed,
    Object? marginPremium = freezed,
    Object? details = freezed,
  }) {
    return _then(_$OrdersSuccessImpl(
      iD: freezed == iD
          ? _value.iD
          : iD // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      orderState: freezed == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as int?,
      ordType: freezed == ordType
          ? _value.ordType
          : ordType // ignore: cast_nullable_to_non_nullable
              as int?,
      recvTime: freezed == recvTime
          ? _value.recvTime
          : recvTime // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolName: freezed == symbolName
          ? _value.symbolName
          : symbolName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchange: freezed == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as int?,
      exchangeName: freezed == exchangeName
          ? _value.exchangeName
          : exchangeName // ignore: cast_nullable_to_non_nullable
              as String?,
      timeInForce: freezed == timeInForce
          ? _value.timeInForce
          : timeInForce // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderQty: freezed == orderQty
          ? _value.orderQty
          : orderQty // ignore: cast_nullable_to_non_nullable
              as double?,
      cumQty: freezed == cumQty
          ? _value.cumQty
          : cumQty // ignore: cast_nullable_to_non_nullable
              as double?,
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String?,
      cashMargin: freezed == cashMargin
          ? _value.cashMargin
          : cashMargin // ignore: cast_nullable_to_non_nullable
              as int?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
      delivType: freezed == delivType
          ? _value.delivType
          : delivType // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDay: freezed == expireDay
          ? _value.expireDay
          : expireDay // ignore: cast_nullable_to_non_nullable
              as int?,
      marginTradeType: freezed == marginTradeType
          ? _value.marginTradeType
          : marginTradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marginPremium: freezed == marginPremium
          ? _value.marginPremium
          : marginPremium // ignore: cast_nullable_to_non_nullable
              as double?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersSuccessImpl implements _OrdersSuccess {
  const _$OrdersSuccessImpl(
      {@JsonKey(name: 'ID') this.iD,
      @JsonKey(name: 'State') this.state,
      @JsonKey(name: 'OrderState') this.orderState,
      @JsonKey(name: 'OrdType') this.ordType,
      @JsonKey(name: 'RecvTime') this.recvTime,
      @JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'SymbolName') this.symbolName,
      @JsonKey(name: 'Exchange') this.exchange,
      @JsonKey(name: 'ExchangeName') this.exchangeName,
      @JsonKey(name: 'TimeInForce') this.timeInForce,
      @JsonKey(name: 'Price') this.price,
      @JsonKey(name: 'OrderQty') this.orderQty,
      @JsonKey(name: 'CumQty') this.cumQty,
      @JsonKey(name: 'Side') this.side,
      @JsonKey(name: 'CashMargin') this.cashMargin,
      @JsonKey(name: 'AccountType') this.accountType,
      @JsonKey(name: 'DelivType') this.delivType,
      @JsonKey(name: 'ExpireDay') this.expireDay,
      @JsonKey(name: 'MarginTradeType') this.marginTradeType,
      @JsonKey(name: 'MarginPremium') this.marginPremium,
      @JsonKey(name: 'Details') final List<Map<String, dynamic>>? details})
      : _details = details;

  factory _$OrdersSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final String? iD;
  @override
  @JsonKey(name: 'State')
  final int? state;
  @override
  @JsonKey(name: 'OrderState')
  final int? orderState;
  @override
  @JsonKey(name: 'OrdType')
  final int? ordType;
  @override
  @JsonKey(name: 'RecvTime')
  final String? recvTime;
  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'SymbolName')
  final String? symbolName;
  @override
  @JsonKey(name: 'Exchange')
  final int? exchange;
  @override
  @JsonKey(name: 'ExchangeName')
  final String? exchangeName;
  @override
  @JsonKey(name: 'TimeInForce')
  final int? timeInForce;
  @override
  @JsonKey(name: 'Price')
  final double? price;
  @override
  @JsonKey(name: 'OrderQty')
  final double? orderQty;
  @override
  @JsonKey(name: 'CumQty')
  final double? cumQty;
  @override
  @JsonKey(name: 'Side')
  final String? side;
  @override
  @JsonKey(name: 'CashMargin')
  final int? cashMargin;
  @override
  @JsonKey(name: 'AccountType')
  final int? accountType;
  @override
  @JsonKey(name: 'DelivType')
  final int? delivType;
  @override
  @JsonKey(name: 'ExpireDay')
  final int? expireDay;
  @override
  @JsonKey(name: 'MarginTradeType')
  final int? marginTradeType;
  @override
  @JsonKey(name: 'MarginPremium')
  final double? marginPremium;
  final List<Map<String, dynamic>>? _details;
  @override
  @JsonKey(name: 'Details')
  List<Map<String, dynamic>>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrdersSuccess(iD: $iD, state: $state, orderState: $orderState, ordType: $ordType, recvTime: $recvTime, symbol: $symbol, symbolName: $symbolName, exchange: $exchange, exchangeName: $exchangeName, timeInForce: $timeInForce, price: $price, orderQty: $orderQty, cumQty: $cumQty, side: $side, cashMargin: $cashMargin, accountType: $accountType, delivType: $delivType, expireDay: $expireDay, marginTradeType: $marginTradeType, marginPremium: $marginPremium, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersSuccessImpl &&
            (identical(other.iD, iD) || other.iD == iD) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.orderState, orderState) ||
                other.orderState == orderState) &&
            (identical(other.ordType, ordType) || other.ordType == ordType) &&
            (identical(other.recvTime, recvTime) ||
                other.recvTime == recvTime) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.symbolName, symbolName) ||
                other.symbolName == symbolName) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.exchangeName, exchangeName) ||
                other.exchangeName == exchangeName) &&
            (identical(other.timeInForce, timeInForce) ||
                other.timeInForce == timeInForce) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.orderQty, orderQty) ||
                other.orderQty == orderQty) &&
            (identical(other.cumQty, cumQty) || other.cumQty == cumQty) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.cashMargin, cashMargin) ||
                other.cashMargin == cashMargin) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.delivType, delivType) ||
                other.delivType == delivType) &&
            (identical(other.expireDay, expireDay) ||
                other.expireDay == expireDay) &&
            (identical(other.marginTradeType, marginTradeType) ||
                other.marginTradeType == marginTradeType) &&
            (identical(other.marginPremium, marginPremium) ||
                other.marginPremium == marginPremium) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        iD,
        state,
        orderState,
        ordType,
        recvTime,
        symbol,
        symbolName,
        exchange,
        exchangeName,
        timeInForce,
        price,
        orderQty,
        cumQty,
        side,
        cashMargin,
        accountType,
        delivType,
        expireDay,
        marginTradeType,
        marginPremium,
        const DeepCollectionEquality().hash(_details)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersSuccessImplCopyWith<_$OrdersSuccessImpl> get copyWith =>
      __$$OrdersSuccessImplCopyWithImpl<_$OrdersSuccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersSuccessImplToJson(
      this,
    );
  }
}

abstract class _OrdersSuccess implements OrdersSuccess {
  const factory _OrdersSuccess(
      {@JsonKey(name: 'ID') final String? iD,
      @JsonKey(name: 'State') final int? state,
      @JsonKey(name: 'OrderState') final int? orderState,
      @JsonKey(name: 'OrdType') final int? ordType,
      @JsonKey(name: 'RecvTime') final String? recvTime,
      @JsonKey(name: 'Symbol') final String? symbol,
      @JsonKey(name: 'SymbolName') final String? symbolName,
      @JsonKey(name: 'Exchange') final int? exchange,
      @JsonKey(name: 'ExchangeName') final String? exchangeName,
      @JsonKey(name: 'TimeInForce') final int? timeInForce,
      @JsonKey(name: 'Price') final double? price,
      @JsonKey(name: 'OrderQty') final double? orderQty,
      @JsonKey(name: 'CumQty') final double? cumQty,
      @JsonKey(name: 'Side') final String? side,
      @JsonKey(name: 'CashMargin') final int? cashMargin,
      @JsonKey(name: 'AccountType') final int? accountType,
      @JsonKey(name: 'DelivType') final int? delivType,
      @JsonKey(name: 'ExpireDay') final int? expireDay,
      @JsonKey(name: 'MarginTradeType') final int? marginTradeType,
      @JsonKey(name: 'MarginPremium') final double? marginPremium,
      @JsonKey(name: 'Details')
      final List<Map<String, dynamic>>? details}) = _$OrdersSuccessImpl;

  factory _OrdersSuccess.fromJson(Map<String, dynamic> json) =
      _$OrdersSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  String? get iD;
  @override
  @JsonKey(name: 'State')
  int? get state;
  @override
  @JsonKey(name: 'OrderState')
  int? get orderState;
  @override
  @JsonKey(name: 'OrdType')
  int? get ordType;
  @override
  @JsonKey(name: 'RecvTime')
  String? get recvTime;
  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'SymbolName')
  String? get symbolName;
  @override
  @JsonKey(name: 'Exchange')
  int? get exchange;
  @override
  @JsonKey(name: 'ExchangeName')
  String? get exchangeName;
  @override
  @JsonKey(name: 'TimeInForce')
  int? get timeInForce;
  @override
  @JsonKey(name: 'Price')
  double? get price;
  @override
  @JsonKey(name: 'OrderQty')
  double? get orderQty;
  @override
  @JsonKey(name: 'CumQty')
  double? get cumQty;
  @override
  @JsonKey(name: 'Side')
  String? get side;
  @override
  @JsonKey(name: 'CashMargin')
  int? get cashMargin;
  @override
  @JsonKey(name: 'AccountType')
  int? get accountType;
  @override
  @JsonKey(name: 'DelivType')
  int? get delivType;
  @override
  @JsonKey(name: 'ExpireDay')
  int? get expireDay;
  @override
  @JsonKey(name: 'MarginTradeType')
  int? get marginTradeType;
  @override
  @JsonKey(name: 'MarginPremium')
  double? get marginPremium;
  @override
  @JsonKey(name: 'Details')
  List<Map<String, dynamic>>? get details;
  @override
  @JsonKey(ignore: true)
  _$$OrdersSuccessImplCopyWith<_$OrdersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
