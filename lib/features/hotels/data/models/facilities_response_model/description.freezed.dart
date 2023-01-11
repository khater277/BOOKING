// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilityDescription _$FacilityDescriptionFromJson(Map<String, dynamic> json) {
  return _FacilityDescription.fromJson(json);
}

/// @nodoc
mixin _$FacilityDescription {
  @HiveField(0)
  String? get languageCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityDescriptionCopyWith<FacilityDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityDescriptionCopyWith<$Res> {
  factory $FacilityDescriptionCopyWith(
          FacilityDescription value, $Res Function(FacilityDescription) then) =
      _$FacilityDescriptionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? languageCode, @HiveField(1) String? content});
}

/// @nodoc
class _$FacilityDescriptionCopyWithImpl<$Res>
    implements $FacilityDescriptionCopyWith<$Res> {
  _$FacilityDescriptionCopyWithImpl(this._value, this._then);

  final FacilityDescription _value;
  // ignore: unused_field
  final $Res Function(FacilityDescription) _then;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FacilityDescriptionCopyWith<$Res>
    implements $FacilityDescriptionCopyWith<$Res> {
  factory _$$_FacilityDescriptionCopyWith(_$_FacilityDescription value,
          $Res Function(_$_FacilityDescription) then) =
      __$$_FacilityDescriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? languageCode, @HiveField(1) String? content});
}

/// @nodoc
class __$$_FacilityDescriptionCopyWithImpl<$Res>
    extends _$FacilityDescriptionCopyWithImpl<$Res>
    implements _$$_FacilityDescriptionCopyWith<$Res> {
  __$$_FacilityDescriptionCopyWithImpl(_$_FacilityDescription _value,
      $Res Function(_$_FacilityDescription) _then)
      : super(_value, (v) => _then(v as _$_FacilityDescription));

  @override
  _$_FacilityDescription get _value => super._value as _$_FacilityDescription;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_FacilityDescription(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityDescription implements _FacilityDescription {
  _$_FacilityDescription(
      {@HiveField(0) this.languageCode, @HiveField(1) this.content});

  factory _$_FacilityDescription.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityDescriptionFromJson(json);

  @override
  @HiveField(0)
  final String? languageCode;
  @override
  @HiveField(1)
  final String? content;

  @override
  String toString() {
    return 'FacilityDescription(languageCode: $languageCode, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityDescription &&
            const DeepCollectionEquality()
                .equals(other.languageCode, languageCode) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(languageCode),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_FacilityDescriptionCopyWith<_$_FacilityDescription> get copyWith =>
      __$$_FacilityDescriptionCopyWithImpl<_$_FacilityDescription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityDescriptionToJson(
      this,
    );
  }
}

abstract class _FacilityDescription implements FacilityDescription {
  factory _FacilityDescription(
      {@HiveField(0) final String? languageCode,
      @HiveField(1) final String? content}) = _$_FacilityDescription;

  factory _FacilityDescription.fromJson(Map<String, dynamic> json) =
      _$_FacilityDescription.fromJson;

  @override
  @HiveField(0)
  String? get languageCode;
  @override
  @HiveField(1)
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityDescriptionCopyWith<_$_FacilityDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
