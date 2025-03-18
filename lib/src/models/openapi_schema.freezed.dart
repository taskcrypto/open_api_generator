// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openapi_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiSchema _$OpenApiSchemaFromJson(Map<String, dynamic> json) {
  return _OpenApiSchema.fromJson(json);
}

/// @nodoc
mixin _$OpenApiSchema {
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Map<String, OpenApiSchema>? get properties =>
      throw _privateConstructorUsedError;
  OpenApiSchema? get items => throw _privateConstructorUsedError;
  List<String>? get required => throw _privateConstructorUsedError;

  /// Serializes this OpenApiSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiSchemaCopyWith<OpenApiSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiSchemaCopyWith<$Res> {
  factory $OpenApiSchemaCopyWith(
          OpenApiSchema value, $Res Function(OpenApiSchema) then) =
      _$OpenApiSchemaCopyWithImpl<$Res, OpenApiSchema>;
  @useResult
  $Res call(
      {String? type,
      String? title,
      Map<String, OpenApiSchema>? properties,
      OpenApiSchema? items,
      List<String>? required});

  $OpenApiSchemaCopyWith<$Res>? get items;
}

/// @nodoc
class _$OpenApiSchemaCopyWithImpl<$Res, $Val extends OpenApiSchema>
    implements $OpenApiSchemaCopyWith<$Res> {
  _$OpenApiSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? properties = freezed,
    Object? items = freezed,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenApiSchemaCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $OpenApiSchemaCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenApiSchemaImplCopyWith<$Res>
    implements $OpenApiSchemaCopyWith<$Res> {
  factory _$$OpenApiSchemaImplCopyWith(
          _$OpenApiSchemaImpl value, $Res Function(_$OpenApiSchemaImpl) then) =
      __$$OpenApiSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? title,
      Map<String, OpenApiSchema>? properties,
      OpenApiSchema? items,
      List<String>? required});

  @override
  $OpenApiSchemaCopyWith<$Res>? get items;
}

/// @nodoc
class __$$OpenApiSchemaImplCopyWithImpl<$Res>
    extends _$OpenApiSchemaCopyWithImpl<$Res, _$OpenApiSchemaImpl>
    implements _$$OpenApiSchemaImplCopyWith<$Res> {
  __$$OpenApiSchemaImplCopyWithImpl(
      _$OpenApiSchemaImpl _value, $Res Function(_$OpenApiSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? properties = freezed,
    Object? items = freezed,
    Object? required = freezed,
  }) {
    return _then(_$OpenApiSchemaImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, OpenApiSchema>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as OpenApiSchema?,
      required: freezed == required
          ? _value._required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiSchemaImpl implements _OpenApiSchema {
  const _$OpenApiSchemaImpl(
      {this.type,
      this.title,
      final Map<String, OpenApiSchema>? properties,
      this.items,
      final List<String>? required})
      : _properties = properties,
        _required = required;

  factory _$OpenApiSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiSchemaImplFromJson(json);

  @override
  final String? type;
  @override
  final String? title;
  final Map<String, OpenApiSchema>? _properties;
  @override
  Map<String, OpenApiSchema>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final OpenApiSchema? items;
  final List<String>? _required;
  @override
  List<String>? get required {
    final value = _required;
    if (value == null) return null;
    if (_required is EqualUnmodifiableListView) return _required;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpenApiSchema(type: $type, title: $title, properties: $properties, items: $items, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiSchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.items, items) || other.items == items) &&
            const DeepCollectionEquality().equals(other._required, _required));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      title,
      const DeepCollectionEquality().hash(_properties),
      items,
      const DeepCollectionEquality().hash(_required));

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiSchemaImplCopyWith<_$OpenApiSchemaImpl> get copyWith =>
      __$$OpenApiSchemaImplCopyWithImpl<_$OpenApiSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiSchemaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiSchema implements OpenApiSchema {
  const factory _OpenApiSchema(
      {final String? type,
      final String? title,
      final Map<String, OpenApiSchema>? properties,
      final OpenApiSchema? items,
      final List<String>? required}) = _$OpenApiSchemaImpl;

  factory _OpenApiSchema.fromJson(Map<String, dynamic> json) =
      _$OpenApiSchemaImpl.fromJson;

  @override
  String? get type;
  @override
  String? get title;
  @override
  Map<String, OpenApiSchema>? get properties;
  @override
  OpenApiSchema? get items;
  @override
  List<String>? get required;

  /// Create a copy of OpenApiSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiSchemaImplCopyWith<_$OpenApiSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
