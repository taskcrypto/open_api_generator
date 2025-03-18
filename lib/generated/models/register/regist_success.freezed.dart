// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regist_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistSuccess _$RegistSuccessFromJson(Map<String, dynamic> json) {
  return _RegistSuccess.fromJson(json);
}

/// @nodoc
mixin _$RegistSuccess {
  @JsonKey(name: 'RegistList')
  List<Map<String, dynamic>>? get registList =>
      throw _privateConstructorUsedError;

  /// Serializes this RegistSuccess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistSuccessCopyWith<RegistSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistSuccessCopyWith<$Res> {
  factory $RegistSuccessCopyWith(
          RegistSuccess value, $Res Function(RegistSuccess) then) =
      _$RegistSuccessCopyWithImpl<$Res, RegistSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RegistList') List<Map<String, dynamic>>? registList});
}

/// @nodoc
class _$RegistSuccessCopyWithImpl<$Res, $Val extends RegistSuccess>
    implements $RegistSuccessCopyWith<$Res> {
  _$RegistSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registList = freezed,
  }) {
    return _then(_value.copyWith(
      registList: freezed == registList
          ? _value.registList
          : registList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistSuccessImplCopyWith<$Res>
    implements $RegistSuccessCopyWith<$Res> {
  factory _$$RegistSuccessImplCopyWith(
          _$RegistSuccessImpl value, $Res Function(_$RegistSuccessImpl) then) =
      __$$RegistSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RegistList') List<Map<String, dynamic>>? registList});
}

/// @nodoc
class __$$RegistSuccessImplCopyWithImpl<$Res>
    extends _$RegistSuccessCopyWithImpl<$Res, _$RegistSuccessImpl>
    implements _$$RegistSuccessImplCopyWith<$Res> {
  __$$RegistSuccessImplCopyWithImpl(
      _$RegistSuccessImpl _value, $Res Function(_$RegistSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registList = freezed,
  }) {
    return _then(_$RegistSuccessImpl(
      registList: freezed == registList
          ? _value._registList
          : registList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistSuccessImpl implements _RegistSuccess {
  const _$RegistSuccessImpl(
      {@JsonKey(name: 'RegistList')
      required final List<Map<String, dynamic>>? registList})
      : _registList = registList;

  factory _$RegistSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistSuccessImplFromJson(json);

  final List<Map<String, dynamic>>? _registList;
  @override
  @JsonKey(name: 'RegistList')
  List<Map<String, dynamic>>? get registList {
    final value = _registList;
    if (value == null) return null;
    if (_registList is EqualUnmodifiableListView) return _registList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegistSuccess(registList: $registList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._registList, _registList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registList));

  /// Create a copy of RegistSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistSuccessImplCopyWith<_$RegistSuccessImpl> get copyWith =>
      __$$RegistSuccessImplCopyWithImpl<_$RegistSuccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistSuccessImplToJson(
      this,
    );
  }
}

abstract class _RegistSuccess implements RegistSuccess {
  const factory _RegistSuccess(
          {@JsonKey(name: 'RegistList')
          required final List<Map<String, dynamic>>? registList}) =
      _$RegistSuccessImpl;

  factory _RegistSuccess.fromJson(Map<String, dynamic> json) =
      _$RegistSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'RegistList')
  List<Map<String, dynamic>>? get registList;

  /// Create a copy of RegistSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistSuccessImplCopyWith<_$RegistSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
