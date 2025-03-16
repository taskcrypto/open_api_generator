// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_future_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletFutureSuccess _$WalletFutureSuccessFromJson(Map<String, dynamic> json) {
  return _WalletFutureSuccess.fromJson(json);
}

/// @nodoc
mixin _$WalletFutureSuccess {
  @JsonKey(name: 'FutureTradeLimit')
  double? get futureTradeLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginRequirement')
  double? get marginRequirement => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginRequirementSell')
  double? get marginRequirementSell => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletFutureSuccessCopyWith<WalletFutureSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFutureSuccessCopyWith<$Res> {
  factory $WalletFutureSuccessCopyWith(
          WalletFutureSuccess value, $Res Function(WalletFutureSuccess) then) =
      _$WalletFutureSuccessCopyWithImpl<$Res, WalletFutureSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FutureTradeLimit') double? futureTradeLimit,
      @JsonKey(name: 'MarginRequirement') double? marginRequirement,
      @JsonKey(name: 'MarginRequirementSell') double? marginRequirementSell});
}

/// @nodoc
class _$WalletFutureSuccessCopyWithImpl<$Res, $Val extends WalletFutureSuccess>
    implements $WalletFutureSuccessCopyWith<$Res> {
  _$WalletFutureSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futureTradeLimit = freezed,
    Object? marginRequirement = freezed,
    Object? marginRequirementSell = freezed,
  }) {
    return _then(_value.copyWith(
      futureTradeLimit: freezed == futureTradeLimit
          ? _value.futureTradeLimit
          : futureTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirement: freezed == marginRequirement
          ? _value.marginRequirement
          : marginRequirement // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirementSell: freezed == marginRequirementSell
          ? _value.marginRequirementSell
          : marginRequirementSell // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletFutureSuccessImplCopyWith<$Res>
    implements $WalletFutureSuccessCopyWith<$Res> {
  factory _$$WalletFutureSuccessImplCopyWith(_$WalletFutureSuccessImpl value,
          $Res Function(_$WalletFutureSuccessImpl) then) =
      __$$WalletFutureSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FutureTradeLimit') double? futureTradeLimit,
      @JsonKey(name: 'MarginRequirement') double? marginRequirement,
      @JsonKey(name: 'MarginRequirementSell') double? marginRequirementSell});
}

/// @nodoc
class __$$WalletFutureSuccessImplCopyWithImpl<$Res>
    extends _$WalletFutureSuccessCopyWithImpl<$Res, _$WalletFutureSuccessImpl>
    implements _$$WalletFutureSuccessImplCopyWith<$Res> {
  __$$WalletFutureSuccessImplCopyWithImpl(_$WalletFutureSuccessImpl _value,
      $Res Function(_$WalletFutureSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? futureTradeLimit = freezed,
    Object? marginRequirement = freezed,
    Object? marginRequirementSell = freezed,
  }) {
    return _then(_$WalletFutureSuccessImpl(
      futureTradeLimit: freezed == futureTradeLimit
          ? _value.futureTradeLimit
          : futureTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirement: freezed == marginRequirement
          ? _value.marginRequirement
          : marginRequirement // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirementSell: freezed == marginRequirementSell
          ? _value.marginRequirementSell
          : marginRequirementSell // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletFutureSuccessImpl implements _WalletFutureSuccess {
  const _$WalletFutureSuccessImpl(
      {@JsonKey(name: 'FutureTradeLimit') this.futureTradeLimit,
      @JsonKey(name: 'MarginRequirement') this.marginRequirement,
      @JsonKey(name: 'MarginRequirementSell') this.marginRequirementSell});

  factory _$WalletFutureSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletFutureSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'FutureTradeLimit')
  final double? futureTradeLimit;
  @override
  @JsonKey(name: 'MarginRequirement')
  final double? marginRequirement;
  @override
  @JsonKey(name: 'MarginRequirementSell')
  final double? marginRequirementSell;

  @override
  String toString() {
    return 'WalletFutureSuccess(futureTradeLimit: $futureTradeLimit, marginRequirement: $marginRequirement, marginRequirementSell: $marginRequirementSell)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletFutureSuccessImpl &&
            (identical(other.futureTradeLimit, futureTradeLimit) ||
                other.futureTradeLimit == futureTradeLimit) &&
            (identical(other.marginRequirement, marginRequirement) ||
                other.marginRequirement == marginRequirement) &&
            (identical(other.marginRequirementSell, marginRequirementSell) ||
                other.marginRequirementSell == marginRequirementSell));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, futureTradeLimit, marginRequirement, marginRequirementSell);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletFutureSuccessImplCopyWith<_$WalletFutureSuccessImpl> get copyWith =>
      __$$WalletFutureSuccessImplCopyWithImpl<_$WalletFutureSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletFutureSuccessImplToJson(
      this,
    );
  }
}

abstract class _WalletFutureSuccess implements WalletFutureSuccess {
  const factory _WalletFutureSuccess(
      {@JsonKey(name: 'FutureTradeLimit') final double? futureTradeLimit,
      @JsonKey(name: 'MarginRequirement') final double? marginRequirement,
      @JsonKey(name: 'MarginRequirementSell')
      final double? marginRequirementSell}) = _$WalletFutureSuccessImpl;

  factory _WalletFutureSuccess.fromJson(Map<String, dynamic> json) =
      _$WalletFutureSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'FutureTradeLimit')
  double? get futureTradeLimit;
  @override
  @JsonKey(name: 'MarginRequirement')
  double? get marginRequirement;
  @override
  @JsonKey(name: 'MarginRequirementSell')
  double? get marginRequirementSell;
  @override
  @JsonKey(ignore: true)
  _$$WalletFutureSuccessImplCopyWith<_$WalletFutureSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
