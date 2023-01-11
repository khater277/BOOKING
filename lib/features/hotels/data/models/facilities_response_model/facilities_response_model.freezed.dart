// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facilities_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilitiesResponseModel _$FacilitiesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FacilitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FacilitiesResponseModel {
  @HiveField(0)
  List<FacilityInfo>? get facilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesResponseModelCopyWith<FacilitiesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesResponseModelCopyWith<$Res> {
  factory $FacilitiesResponseModelCopyWith(FacilitiesResponseModel value,
          $Res Function(FacilitiesResponseModel) then) =
      _$FacilitiesResponseModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<FacilityInfo>? facilities});
}

/// @nodoc
class _$FacilitiesResponseModelCopyWithImpl<$Res>
    implements $FacilitiesResponseModelCopyWith<$Res> {
  _$FacilitiesResponseModelCopyWithImpl(this._value, this._then);

  final FacilitiesResponseModel _value;
  // ignore: unused_field
  final $Res Function(FacilitiesResponseModel) _then;

  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_value.copyWith(
      facilities: facilities == freezed
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityInfo>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FacilitiesResponseModelCopyWith<$Res>
    implements $FacilitiesResponseModelCopyWith<$Res> {
  factory _$$_FacilitiesResponseModelCopyWith(_$_FacilitiesResponseModel value,
          $Res Function(_$_FacilitiesResponseModel) then) =
      __$$_FacilitiesResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<FacilityInfo>? facilities});
}

/// @nodoc
class __$$_FacilitiesResponseModelCopyWithImpl<$Res>
    extends _$FacilitiesResponseModelCopyWithImpl<$Res>
    implements _$$_FacilitiesResponseModelCopyWith<$Res> {
  __$$_FacilitiesResponseModelCopyWithImpl(_$_FacilitiesResponseModel _value,
      $Res Function(_$_FacilitiesResponseModel) _then)
      : super(_value, (v) => _then(v as _$_FacilitiesResponseModel));

  @override
  _$_FacilitiesResponseModel get _value =>
      super._value as _$_FacilitiesResponseModel;

  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_$_FacilitiesResponseModel(
      facilities: facilities == freezed
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilitiesResponseModel implements _FacilitiesResponseModel {
  _$_FacilitiesResponseModel(
      {@HiveField(0) final List<FacilityInfo>? facilities})
      : _facilities = facilities;

  factory _$_FacilitiesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilitiesResponseModelFromJson(json);

  final List<FacilityInfo>? _facilities;
  @override
  @HiveField(0)
  List<FacilityInfo>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FacilitiesResponseModel(facilities: $facilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilitiesResponseModel &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_facilities));

  @JsonKey(ignore: true)
  @override
  _$$_FacilitiesResponseModelCopyWith<_$_FacilitiesResponseModel>
      get copyWith =>
          __$$_FacilitiesResponseModelCopyWithImpl<_$_FacilitiesResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilitiesResponseModelToJson(
      this,
    );
  }
}

abstract class _FacilitiesResponseModel implements FacilitiesResponseModel {
  factory _FacilitiesResponseModel(
          {@HiveField(0) final List<FacilityInfo>? facilities}) =
      _$_FacilitiesResponseModel;

  factory _FacilitiesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_FacilitiesResponseModel.fromJson;

  @override
  @HiveField(0)
  List<FacilityInfo>? get facilities;
  @override
  @JsonKey(ignore: true)
  _$$_FacilitiesResponseModelCopyWith<_$_FacilitiesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
