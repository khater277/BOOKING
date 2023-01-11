// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facility_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilityInfo _$FacilityInfoFromJson(Map<String, dynamic> json) {
  return _FacilityInfo.fromJson(json);
}

/// @nodoc
mixin _$FacilityInfo {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get facilityTypologyCode => throw _privateConstructorUsedError;
  @HiveField(3)
  FacilityDescription? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityInfoCopyWith<FacilityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityInfoCopyWith<$Res> {
  factory $FacilityInfoCopyWith(
          FacilityInfo value, $Res Function(FacilityInfo) then) =
      _$FacilityInfoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? facilityTypologyCode,
      @HiveField(3) FacilityDescription? description});

  $FacilityDescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class _$FacilityInfoCopyWithImpl<$Res> implements $FacilityInfoCopyWith<$Res> {
  _$FacilityInfoCopyWithImpl(this._value, this._then);

  final FacilityInfo _value;
  // ignore: unused_field
  final $Res Function(FacilityInfo) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? facilityGroupCode = freezed,
    Object? facilityTypologyCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityTypologyCode: facilityTypologyCode == freezed
          ? _value.facilityTypologyCode
          : facilityTypologyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FacilityDescription?,
    ));
  }

  @override
  $FacilityDescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $FacilityDescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_FacilityInfoCopyWith<$Res>
    implements $FacilityInfoCopyWith<$Res> {
  factory _$$_FacilityInfoCopyWith(
          _$_FacilityInfo value, $Res Function(_$_FacilityInfo) then) =
      __$$_FacilityInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? facilityTypologyCode,
      @HiveField(3) FacilityDescription? description});

  @override
  $FacilityDescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class __$$_FacilityInfoCopyWithImpl<$Res>
    extends _$FacilityInfoCopyWithImpl<$Res>
    implements _$$_FacilityInfoCopyWith<$Res> {
  __$$_FacilityInfoCopyWithImpl(
      _$_FacilityInfo _value, $Res Function(_$_FacilityInfo) _then)
      : super(_value, (v) => _then(v as _$_FacilityInfo));

  @override
  _$_FacilityInfo get _value => super._value as _$_FacilityInfo;

  @override
  $Res call({
    Object? code = freezed,
    Object? facilityGroupCode = freezed,
    Object? facilityTypologyCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_FacilityInfo(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityTypologyCode: facilityTypologyCode == freezed
          ? _value.facilityTypologyCode
          : facilityTypologyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FacilityDescription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityInfo implements _FacilityInfo {
  _$_FacilityInfo(
      {@HiveField(0) this.code,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.facilityTypologyCode,
      @HiveField(3) this.description});

  factory _$_FacilityInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityInfoFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? facilityTypologyCode;
  @override
  @HiveField(3)
  final FacilityDescription? description;

  @override
  String toString() {
    return 'FacilityInfo(code: $code, facilityGroupCode: $facilityGroupCode, facilityTypologyCode: $facilityTypologyCode, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityInfo &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.facilityGroupCode, facilityGroupCode) &&
            const DeepCollectionEquality()
                .equals(other.facilityTypologyCode, facilityTypologyCode) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(facilityGroupCode),
      const DeepCollectionEquality().hash(facilityTypologyCode),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_FacilityInfoCopyWith<_$_FacilityInfo> get copyWith =>
      __$$_FacilityInfoCopyWithImpl<_$_FacilityInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityInfoToJson(
      this,
    );
  }
}

abstract class _FacilityInfo implements FacilityInfo {
  factory _FacilityInfo(
      {@HiveField(0) final int? code,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? facilityTypologyCode,
      @HiveField(3) final FacilityDescription? description}) = _$_FacilityInfo;

  factory _FacilityInfo.fromJson(Map<String, dynamic> json) =
      _$_FacilityInfo.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get facilityTypologyCode;
  @override
  @HiveField(3)
  FacilityDescription? get description;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityInfoCopyWith<_$_FacilityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
