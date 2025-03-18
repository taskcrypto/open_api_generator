// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_unregister.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestUnregister _$RequestUnregisterFromJson(Map<String, dynamic> json) {
  return _RequestUnregister.fromJson(json);
}

/// @nodoc
mixin _$RequestUnregister {
  @JsonKey(name: 'Symbols')
  List<Map<String, dynamic>>? get symbols => throw _privateConstructorUsedError;

  /// Serializes this RequestUnregister to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestUnregister
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestUnregisterCopyWith<RequestUnregister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUnregisterCopyWith<$Res> {
  factory $RequestUnregisterCopyWith(
          RequestUnregister value, $Res Function(RequestUnregister) then) =
      _$RequestUnregisterCopyWithImpl<$Res, RequestUnregister>;
  @useResult
  $Res call({@JsonKey(name: 'Symbols') List<Map<String, dynamic>>? symbols});
}

/// @nodoc
class _$RequestUnregisterCopyWithImpl<$Res, $Val extends RequestUnregister>
    implements $RequestUnregisterCopyWith<$Res> {
  _$RequestUnregisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestUnregister
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
abstract class _$$RequestUnregisterImplCopyWith<$Res>
    implements $RequestUnregisterCopyWith<$Res> {
  factory _$$RequestUnregisterImplCopyWith(_$RequestUnregisterImpl value,
          $Res Function(_$RequestUnregisterImpl) then) =
      __$$RequestUnregisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Symbols') List<Map<String, dynamic>>? symbols});
}

/// @nodoc
class __$$RequestUnregisterImplCopyWithImpl<$Res>
    extends _$RequestUnregisterCopyWithImpl<$Res, _$RequestUnregisterImpl>
    implements _$$RequestUnregisterImplCopyWith<$Res> {
  __$$RequestUnregisterImplCopyWithImpl(_$RequestUnregisterImpl _value,
      $Res Function(_$RequestUnregisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestUnregister
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = freezed,
  }) {
    return _then(_$RequestUnregisterImpl(
      symbols: freezed == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestUnregisterImpl implements _RequestUnregister {
  const _$RequestUnregisterImpl(
      {@JsonKey(name: 'Symbols')
      required final List<Map<String, dynamic>>? symbols})
      : _symbols = symbols;

  factory _$RequestUnregisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestUnregisterImplFromJson(json);

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
    return 'RequestUnregister(symbols: $symbols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestUnregisterImpl &&
            const DeepCollectionEquality().equals(other._symbols, _symbols));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_symbols));

  /// Create a copy of RequestUnregister
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestUnregisterImplCopyWith<_$RequestUnregisterImpl> get copyWith =>
      __$$RequestUnregisterImplCopyWithImpl<_$RequestUnregisterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestUnregisterImplToJson(
      this,
    );
  }
}

abstract class _RequestUnregister implements RequestUnregister {
  const factory _RequestUnregister(
          {@JsonKey(name: 'Symbols')
          required final List<Map<String, dynamic>>? symbols}) =
      _$RequestUnregisterImpl;

  factory _RequestUnregister.fromJson(Map<String, dynamic> json) =
      _$RequestUnregisterImpl.fromJson;

  @override
  @JsonKey(name: 'Symbols')
  List<Map<String, dynamic>>? get symbols;

  /// Create a copy of RequestUnregister
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestUnregisterImplCopyWith<_$RequestUnregisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
