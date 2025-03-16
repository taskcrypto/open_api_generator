// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeResponse _$ExchangeResponseFromJson(Map<String, dynamic> json) {
  return _ExchangeResponse.fromJson(json);
}

/// @nodoc
mixin _$ExchangeResponse {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'BidPrice')
  double? get bidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'Spread')
  double? get spread => throw _privateConstructorUsedError;
  @JsonKey(name: 'AskPrice')
  double? get askPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'Change')
  double? get change => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time')
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeResponseCopyWith<ExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeResponseCopyWith<$Res> {
  factory $ExchangeResponseCopyWith(
          ExchangeResponse value, $Res Function(ExchangeResponse) then) =
      _$ExchangeResponseCopyWithImpl<$Res, ExchangeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'BidPrice') double? bidPrice,
      @JsonKey(name: 'Spread') double? spread,
      @JsonKey(name: 'AskPrice') double? askPrice,
      @JsonKey(name: 'Change') double? change,
      @JsonKey(name: 'Time') String? time});
}

/// @nodoc
class _$ExchangeResponseCopyWithImpl<$Res, $Val extends ExchangeResponse>
    implements $ExchangeResponseCopyWith<$Res> {
  _$ExchangeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? bidPrice = freezed,
    Object? spread = freezed,
    Object? askPrice = freezed,
    Object? change = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      bidPrice: freezed == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      spread: freezed == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
              as double?,
      askPrice: freezed == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      change: freezed == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeResponseImplCopyWith<$Res>
    implements $ExchangeResponseCopyWith<$Res> {
  factory _$$ExchangeResponseImplCopyWith(_$ExchangeResponseImpl value,
          $Res Function(_$ExchangeResponseImpl) then) =
      __$$ExchangeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'BidPrice') double? bidPrice,
      @JsonKey(name: 'Spread') double? spread,
      @JsonKey(name: 'AskPrice') double? askPrice,
      @JsonKey(name: 'Change') double? change,
      @JsonKey(name: 'Time') String? time});
}

/// @nodoc
class __$$ExchangeResponseImplCopyWithImpl<$Res>
    extends _$ExchangeResponseCopyWithImpl<$Res, _$ExchangeResponseImpl>
    implements _$$ExchangeResponseImplCopyWith<$Res> {
  __$$ExchangeResponseImplCopyWithImpl(_$ExchangeResponseImpl _value,
      $Res Function(_$ExchangeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? bidPrice = freezed,
    Object? spread = freezed,
    Object? askPrice = freezed,
    Object? change = freezed,
    Object? time = freezed,
  }) {
    return _then(_$ExchangeResponseImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      bidPrice: freezed == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      spread: freezed == spread
          ? _value.spread
          : spread // ignore: cast_nullable_to_non_nullable
              as double?,
      askPrice: freezed == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      change: freezed == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeResponseImpl implements _ExchangeResponse {
  const _$ExchangeResponseImpl(
      {@JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'BidPrice') this.bidPrice,
      @JsonKey(name: 'Spread') this.spread,
      @JsonKey(name: 'AskPrice') this.askPrice,
      @JsonKey(name: 'Change') this.change,
      @JsonKey(name: 'Time') this.time});

  factory _$ExchangeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'BidPrice')
  final double? bidPrice;
  @override
  @JsonKey(name: 'Spread')
  final double? spread;
  @override
  @JsonKey(name: 'AskPrice')
  final double? askPrice;
  @override
  @JsonKey(name: 'Change')
  final double? change;
  @override
  @JsonKey(name: 'Time')
  final String? time;

  @override
  String toString() {
    return 'ExchangeResponse(symbol: $symbol, bidPrice: $bidPrice, spread: $spread, askPrice: $askPrice, change: $change, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeResponseImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice) &&
            (identical(other.spread, spread) || other.spread == spread) &&
            (identical(other.askPrice, askPrice) ||
                other.askPrice == askPrice) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, bidPrice, spread, askPrice, change, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeResponseImplCopyWith<_$ExchangeResponseImpl> get copyWith =>
      __$$ExchangeResponseImplCopyWithImpl<_$ExchangeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeResponseImplToJson(
      this,
    );
  }
}

abstract class _ExchangeResponse implements ExchangeResponse {
  const factory _ExchangeResponse(
      {@JsonKey(name: 'Symbol') final String? symbol,
      @JsonKey(name: 'BidPrice') final double? bidPrice,
      @JsonKey(name: 'Spread') final double? spread,
      @JsonKey(name: 'AskPrice') final double? askPrice,
      @JsonKey(name: 'Change') final double? change,
      @JsonKey(name: 'Time') final String? time}) = _$ExchangeResponseImpl;

  factory _ExchangeResponse.fromJson(Map<String, dynamic> json) =
      _$ExchangeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'BidPrice')
  double? get bidPrice;
  @override
  @JsonKey(name: 'Spread')
  double? get spread;
  @override
  @JsonKey(name: 'AskPrice')
  double? get askPrice;
  @override
  @JsonKey(name: 'Change')
  double? get change;
  @override
  @JsonKey(name: 'Time')
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeResponseImplCopyWith<_$ExchangeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
