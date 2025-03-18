// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRegister _$RequestRegisterFromJson(Map<String, dynamic> json) {
  return _RequestRegister.fromJson(json);
}

/// @nodoc
mixin _$RequestRegister {
  @JsonKey(name: 'Symbols')
  List<Map<String, dynamic>>? get symbols => throw _privateConstructorUsedError;

  /// Serializes this RequestRegister to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRegister
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRegisterCopyWith<RequestRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRegisterCopyWith<$Res> {
  factory $RequestRegisterCopyWith(
          RequestRegister value, $Res Function(RequestRegister) then) =
      _$RequestRegisterCopyWithImpl<$Res, RequestRegister>;
  @useResult
  $Res call({@JsonKey(name: 'Symbols') List<Map<String, dynamic>>? symbols});
}

/// @nodoc
class _$RequestRegisterCopyWithImpl<$Res, $Val extends RequestRegister>
    implements $RequestRegisterCopyWith<$Res> {
  _$RequestRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRegister
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = freezed,
  }) {
    return _then(_value.copyWith(
      symbols: freezed == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRegisterImplCopyWith<$Res>
    implements $RequestRegisterCopyWith<$Res> {
  factory _$$RequestRegisterImplCopyWith(_$RequestRegisterImpl value,
          $Res Function(_$RequestRegisterImpl) then) =
      __$$RequestRegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Symbols') List<Map<String, dynamic>>? symbols});
}

/// @nodoc
class __$$RequestRegisterImplCopyWithImpl<$Res>
    extends _$RequestRegisterCopyWithImpl<$Res, _$RequestRegisterImpl>
    implements _$$RequestRegisterImplCopyWith<$Res> {
  __$$RequestRegisterImplCopyWithImpl(
      _$RequestRegisterImpl _value, $Res Function(_$RequestRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRegister
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = freezed,
  }) {
    return _then(_$RequestRegisterImpl(
      symbols: freezed == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRegisterImpl implements _RequestRegister {
  const _$RequestRegisterImpl(
      {@JsonKey(name: 'Symbols')
      required final List<Map<String, dynamic>>? symbols})
      : _symbols = symbols;

  factory _$RequestRegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRegisterImplFromJson(json);

  final List<Map<String, dynamic>>? _symbols;
  @override
  @JsonKey(name: 'Symbols')
  List<Map<String, dynamic>>? get symbols {
    final value = _symbols;
    if (value == null) return null;
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestRegister(symbols: $symbols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRegisterImpl &&
            const DeepCollectionEquality().equals(other._symbols, _symbols));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_symbols));

  /// Create a copy of RequestRegister
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRegisterImplCopyWith<_$RequestRegisterImpl> get copyWith =>
      __$$RequestRegisterImplCopyWithImpl<_$RequestRegisterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRegisterImplToJson(
      this,
    );
  }
}

abstract class _RequestRegister implements RequestRegister {
  const factory _RequestRegister(
          {@JsonKey(name: 'Symbols')
          required final List<Map<String, dynamic>>? symbols}) =
      _$RequestRegisterImpl;

  factory _RequestRegister.fromJson(Map<String, dynamic> json) =
      _$RequestRegisterImpl.fromJson;

  @override
  @JsonKey(name: 'Symbols')
  List<Map<String, dynamic>>? get symbols;

  /// Create a copy of RequestRegister
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRegisterImplCopyWith<_$RequestRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
