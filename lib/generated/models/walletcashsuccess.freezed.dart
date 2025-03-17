// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walletcashsuccess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletCashSuccess _$WalletCashSuccessFromJson(Map<String, dynamic> json) {
  return _WalletCashSuccess.fromJson(json);
}

/// @nodoc
mixin _$WalletCashSuccess {
  @JsonKey(name: 'StockAccountWallet')
  double? get stockAccountWallet => throw _privateConstructorUsedError;
  @JsonKey(name: 'AuKCStockAccountWallet')
  double? get auKCStockAccountWallet => throw _privateConstructorUsedError;
  @JsonKey(name: 'AuJbnStockAccountWallet')
  double? get auJbnStockAccountWallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCashSuccessCopyWith<WalletCashSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCashSuccessCopyWith<$Res> {
  factory $WalletCashSuccessCopyWith(
          WalletCashSuccess value, $Res Function(WalletCashSuccess) then) =
      _$WalletCashSuccessCopyWithImpl<$Res, WalletCashSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'StockAccountWallet') double? stockAccountWallet,
      @JsonKey(name: 'AuKCStockAccountWallet') double? auKCStockAccountWallet,
      @JsonKey(name: 'AuJbnStockAccountWallet')
      double? auJbnStockAccountWallet});
}

/// @nodoc
class _$WalletCashSuccessCopyWithImpl<$Res, $Val extends WalletCashSuccess>
    implements $WalletCashSuccessCopyWith<$Res> {
  _$WalletCashSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockAccountWallet = freezed,
    Object? auKCStockAccountWallet = freezed,
    Object? auJbnStockAccountWallet = freezed,
  }) {
    return _then(_value.copyWith(
      stockAccountWallet: freezed == stockAccountWallet
          ? _value.stockAccountWallet
          : stockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      auKCStockAccountWallet: freezed == auKCStockAccountWallet
          ? _value.auKCStockAccountWallet
          : auKCStockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      auJbnStockAccountWallet: freezed == auJbnStockAccountWallet
          ? _value.auJbnStockAccountWallet
          : auJbnStockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletCashSuccessImplCopyWith<$Res>
    implements $WalletCashSuccessCopyWith<$Res> {
  factory _$$WalletCashSuccessImplCopyWith(_$WalletCashSuccessImpl value,
          $Res Function(_$WalletCashSuccessImpl) then) =
      __$$WalletCashSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'StockAccountWallet') double? stockAccountWallet,
      @JsonKey(name: 'AuKCStockAccountWallet') double? auKCStockAccountWallet,
      @JsonKey(name: 'AuJbnStockAccountWallet')
      double? auJbnStockAccountWallet});
}

/// @nodoc
class __$$WalletCashSuccessImplCopyWithImpl<$Res>
    extends _$WalletCashSuccessCopyWithImpl<$Res, _$WalletCashSuccessImpl>
    implements _$$WalletCashSuccessImplCopyWith<$Res> {
  __$$WalletCashSuccessImplCopyWithImpl(_$WalletCashSuccessImpl _value,
      $Res Function(_$WalletCashSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockAccountWallet = freezed,
    Object? auKCStockAccountWallet = freezed,
    Object? auJbnStockAccountWallet = freezed,
  }) {
    return _then(_$WalletCashSuccessImpl(
      stockAccountWallet: freezed == stockAccountWallet
          ? _value.stockAccountWallet
          : stockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      auKCStockAccountWallet: freezed == auKCStockAccountWallet
          ? _value.auKCStockAccountWallet
          : auKCStockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      auJbnStockAccountWallet: freezed == auJbnStockAccountWallet
          ? _value.auJbnStockAccountWallet
          : auJbnStockAccountWallet // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletCashSuccessImpl implements _WalletCashSuccess {
  const _$WalletCashSuccessImpl(
      {@JsonKey(name: 'StockAccountWallet') this.stockAccountWallet,
      @JsonKey(name: 'AuKCStockAccountWallet') this.auKCStockAccountWallet,
      @JsonKey(name: 'AuJbnStockAccountWallet') this.auJbnStockAccountWallet});

  factory _$WalletCashSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCashSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'StockAccountWallet')
  final double? stockAccountWallet;
  @override
  @JsonKey(name: 'AuKCStockAccountWallet')
  final double? auKCStockAccountWallet;
  @override
  @JsonKey(name: 'AuJbnStockAccountWallet')
  final double? auJbnStockAccountWallet;

  @override
  String toString() {
    return 'WalletCashSuccess(stockAccountWallet: $stockAccountWallet, auKCStockAccountWallet: $auKCStockAccountWallet, auJbnStockAccountWallet: $auJbnStockAccountWallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCashSuccessImpl &&
            (identical(other.stockAccountWallet, stockAccountWallet) ||
                other.stockAccountWallet == stockAccountWallet) &&
            (identical(other.auKCStockAccountWallet, auKCStockAccountWallet) ||
                other.auKCStockAccountWallet == auKCStockAccountWallet) &&
            (identical(
                    other.auJbnStockAccountWallet, auJbnStockAccountWallet) ||
                other.auJbnStockAccountWallet == auJbnStockAccountWallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stockAccountWallet,
      auKCStockAccountWallet, auJbnStockAccountWallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCashSuccessImplCopyWith<_$WalletCashSuccessImpl> get copyWith =>
      __$$WalletCashSuccessImplCopyWithImpl<_$WalletCashSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletCashSuccessImplToJson(
      this,
    );
  }
}

abstract class _WalletCashSuccess implements WalletCashSuccess {
  const factory _WalletCashSuccess(
      {@JsonKey(name: 'StockAccountWallet') final double? stockAccountWallet,
      @JsonKey(name: 'AuKCStockAccountWallet')
      final double? auKCStockAccountWallet,
      @JsonKey(name: 'AuJbnStockAccountWallet')
      final double? auJbnStockAccountWallet}) = _$WalletCashSuccessImpl;

  factory _WalletCashSuccess.fromJson(Map<String, dynamic> json) =
      _$WalletCashSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'StockAccountWallet')
  double? get stockAccountWallet;
  @override
  @JsonKey(name: 'AuKCStockAccountWallet')
  double? get auKCStockAccountWallet;
  @override
  @JsonKey(name: 'AuJbnStockAccountWallet')
  double? get auJbnStockAccountWallet;
  @override
  @JsonKey(ignore: true)
  _$$WalletCashSuccessImplCopyWith<_$WalletCashSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
