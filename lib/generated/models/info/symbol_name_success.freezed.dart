// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol_name_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymbolNameSuccess _$SymbolNameSuccessFromJson(Map<String, dynamic> json) {
  return _SymbolNameSuccess.fromJson(json);
}

/// @nodoc
mixin _$SymbolNameSuccess {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'SymbolName')
  String? get symbolName => throw _privateConstructorUsedError;

  /// Serializes this SymbolNameSuccess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymbolNameSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymbolNameSuccessCopyWith<SymbolNameSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolNameSuccessCopyWith<$Res> {
  factory $SymbolNameSuccessCopyWith(
          SymbolNameSuccess value, $Res Function(SymbolNameSuccess) then) =
      _$SymbolNameSuccessCopyWithImpl<$Res, SymbolNameSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'SymbolName') String? symbolName});
}

/// @nodoc
class _$SymbolNameSuccessCopyWithImpl<$Res, $Val extends SymbolNameSuccess>
    implements $SymbolNameSuccessCopyWith<$Res> {
  _$SymbolNameSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymbolNameSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? symbolName = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolName: freezed == symbolName
          ? _value.symbolName
          : symbolName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymbolNameSuccessImplCopyWith<$Res>
    implements $SymbolNameSuccessCopyWith<$Res> {
  factory _$$SymbolNameSuccessImplCopyWith(_$SymbolNameSuccessImpl value,
          $Res Function(_$SymbolNameSuccessImpl) then) =
      __$$SymbolNameSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'SymbolName') String? symbolName});
}

/// @nodoc
class __$$SymbolNameSuccessImplCopyWithImpl<$Res>
    extends _$SymbolNameSuccessCopyWithImpl<$Res, _$SymbolNameSuccessImpl>
    implements _$$SymbolNameSuccessImplCopyWith<$Res> {
  __$$SymbolNameSuccessImplCopyWithImpl(_$SymbolNameSuccessImpl _value,
      $Res Function(_$SymbolNameSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymbolNameSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? symbolName = freezed,
  }) {
    return _then(_$SymbolNameSuccessImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolName: freezed == symbolName
          ? _value.symbolName
          : symbolName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolNameSuccessImpl implements _SymbolNameSuccess {
  const _$SymbolNameSuccessImpl(
      {@JsonKey(name: 'Symbol') required this.symbol,
      @JsonKey(name: 'SymbolName') required this.symbolName});

  factory _$SymbolNameSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymbolNameSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'SymbolName')
  final String? symbolName;

  @override
  String toString() {
    return 'SymbolNameSuccess(symbol: $symbol, symbolName: $symbolName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolNameSuccessImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.symbolName, symbolName) ||
                other.symbolName == symbolName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, symbolName);

  /// Create a copy of SymbolNameSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolNameSuccessImplCopyWith<_$SymbolNameSuccessImpl> get copyWith =>
      __$$SymbolNameSuccessImplCopyWithImpl<_$SymbolNameSuccessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolNameSuccessImplToJson(
      this,
    );
  }
}

abstract class _SymbolNameSuccess implements SymbolNameSuccess {
  const factory _SymbolNameSuccess(
          {@JsonKey(name: 'Symbol') required final String? symbol,
          @JsonKey(name: 'SymbolName') required final String? symbolName}) =
      _$SymbolNameSuccessImpl;

  factory _SymbolNameSuccess.fromJson(Map<String, dynamic> json) =
      _$SymbolNameSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'SymbolName')
  String? get symbolName;

  /// Create a copy of SymbolNameSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymbolNameSuccessImplCopyWith<_$SymbolNameSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
