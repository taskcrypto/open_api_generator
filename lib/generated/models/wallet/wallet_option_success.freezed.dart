// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_option_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletOptionSuccess _$WalletOptionSuccessFromJson(Map<String, dynamic> json) {
  return _WalletOptionSuccess.fromJson(json);
}

/// @nodoc
mixin _$WalletOptionSuccess {
  @JsonKey(name: 'OptionBuyTradeLimit')
  double? get optionBuyTradeLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'OptionSellTradeLimit')
  double? get optionSellTradeLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarginRequirement')
  double? get marginRequirement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletOptionSuccessCopyWith<WalletOptionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletOptionSuccessCopyWith<$Res> {
  factory $WalletOptionSuccessCopyWith(
          WalletOptionSuccess value, $Res Function(WalletOptionSuccess) then) =
      _$WalletOptionSuccessCopyWithImpl<$Res, WalletOptionSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'OptionBuyTradeLimit') double? optionBuyTradeLimit,
      @JsonKey(name: 'OptionSellTradeLimit') double? optionSellTradeLimit,
      @JsonKey(name: 'MarginRequirement') double? marginRequirement});
}

/// @nodoc
class _$WalletOptionSuccessCopyWithImpl<$Res, $Val extends WalletOptionSuccess>
    implements $WalletOptionSuccessCopyWith<$Res> {
  _$WalletOptionSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionBuyTradeLimit = freezed,
    Object? optionSellTradeLimit = freezed,
    Object? marginRequirement = freezed,
  }) {
    return _then(_value.copyWith(
      optionBuyTradeLimit: freezed == optionBuyTradeLimit
          ? _value.optionBuyTradeLimit
          : optionBuyTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      optionSellTradeLimit: freezed == optionSellTradeLimit
          ? _value.optionSellTradeLimit
          : optionSellTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirement: freezed == marginRequirement
          ? _value.marginRequirement
          : marginRequirement // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletOptionSuccessImplCopyWith<$Res>
    implements $WalletOptionSuccessCopyWith<$Res> {
  factory _$$WalletOptionSuccessImplCopyWith(_$WalletOptionSuccessImpl value,
          $Res Function(_$WalletOptionSuccessImpl) then) =
      __$$WalletOptionSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'OptionBuyTradeLimit') double? optionBuyTradeLimit,
      @JsonKey(name: 'OptionSellTradeLimit') double? optionSellTradeLimit,
      @JsonKey(name: 'MarginRequirement') double? marginRequirement});
}

/// @nodoc
class __$$WalletOptionSuccessImplCopyWithImpl<$Res>
    extends _$WalletOptionSuccessCopyWithImpl<$Res, _$WalletOptionSuccessImpl>
    implements _$$WalletOptionSuccessImplCopyWith<$Res> {
  __$$WalletOptionSuccessImplCopyWithImpl(_$WalletOptionSuccessImpl _value,
      $Res Function(_$WalletOptionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionBuyTradeLimit = freezed,
    Object? optionSellTradeLimit = freezed,
    Object? marginRequirement = freezed,
  }) {
    return _then(_$WalletOptionSuccessImpl(
      optionBuyTradeLimit: freezed == optionBuyTradeLimit
          ? _value.optionBuyTradeLimit
          : optionBuyTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      optionSellTradeLimit: freezed == optionSellTradeLimit
          ? _value.optionSellTradeLimit
          : optionSellTradeLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      marginRequirement: freezed == marginRequirement
          ? _value.marginRequirement
          : marginRequirement // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletOptionSuccessImpl implements _WalletOptionSuccess {
  const _$WalletOptionSuccessImpl(
      {@JsonKey(name: 'OptionBuyTradeLimit') this.optionBuyTradeLimit,
      @JsonKey(name: 'OptionSellTradeLimit') this.optionSellTradeLimit,
      @JsonKey(name: 'MarginRequirement') this.marginRequirement});

  factory _$WalletOptionSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletOptionSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'OptionBuyTradeLimit')
  final double? optionBuyTradeLimit;
  @override
  @JsonKey(name: 'OptionSellTradeLimit')
  final double? optionSellTradeLimit;
  @override
  @JsonKey(name: 'MarginRequirement')
  final double? marginRequirement;

  @override
  String toString() {
    return 'WalletOptionSuccess(optionBuyTradeLimit: $optionBuyTradeLimit, optionSellTradeLimit: $optionSellTradeLimit, marginRequirement: $marginRequirement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletOptionSuccessImpl &&
            (identical(other.optionBuyTradeLimit, optionBuyTradeLimit) ||
                other.optionBuyTradeLimit == optionBuyTradeLimit) &&
            (identical(other.optionSellTradeLimit, optionSellTradeLimit) ||
                other.optionSellTradeLimit == optionSellTradeLimit) &&
            (identical(other.marginRequirement, marginRequirement) ||
                other.marginRequirement == marginRequirement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, optionBuyTradeLimit,
      optionSellTradeLimit, marginRequirement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletOptionSuccessImplCopyWith<_$WalletOptionSuccessImpl> get copyWith =>
      __$$WalletOptionSuccessImplCopyWithImpl<_$WalletOptionSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletOptionSuccessImplToJson(
      this,
    );
  }
}

abstract class _WalletOptionSuccess implements WalletOptionSuccess {
  const factory _WalletOptionSuccess(
      {@JsonKey(name: 'OptionBuyTradeLimit') final double? optionBuyTradeLimit,
      @JsonKey(name: 'OptionSellTradeLimit') final double? optionSellTradeLimit,
      @JsonKey(name: 'MarginRequirement')
      final double? marginRequirement}) = _$WalletOptionSuccessImpl;

  factory _WalletOptionSuccess.fromJson(Map<String, dynamic> json) =
      _$WalletOptionSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'OptionBuyTradeLimit')
  double? get optionBuyTradeLimit;
  @override
  @JsonKey(name: 'OptionSellTradeLimit')
  double? get optionSellTradeLimit;
  @override
  @JsonKey(name: 'MarginRequirement')
  double? get marginRequirement;
  @override
  @JsonKey(ignore: true)
  _$$WalletOptionSuccessImplCopyWith<_$WalletOptionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
