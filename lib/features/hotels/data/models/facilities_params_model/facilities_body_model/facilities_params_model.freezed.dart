// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facilities_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilitiesParamsModel _$FacilitiesParamsModelFromJson(
    Map<String, dynamic> json) {
  return _FacilitiesParamsModel.fromJson(json);
}

/// @nodoc
mixin _$FacilitiesParamsModel {
  String? get fields => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesParamsModelCopyWith<FacilitiesParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesParamsModelCopyWith<$Res> {
  factory $FacilitiesParamsModelCopyWith(FacilitiesParamsModel value,
          $Res Function(FacilitiesParamsModel) then) =
      _$FacilitiesParamsModelCopyWithImpl<$Res>;
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class _$FacilitiesParamsModelCopyWithImpl<$Res>
    implements $FacilitiesParamsModelCopyWith<$Res> {
  _$FacilitiesParamsModelCopyWithImpl(this._value, this._then);

  final FacilitiesParamsModel _value;
  // ignore: unused_field
  final $Res Function(FacilitiesParamsModel) _then;

  @override
  $Res call({
    Object? fields = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FacilitiesParamsModelCopyWith<$Res>
    implements $FacilitiesParamsModelCopyWith<$Res> {
  factory _$$_FacilitiesParamsModelCopyWith(_$_FacilitiesParamsModel value,
          $Res Function(_$_FacilitiesParamsModel) then) =
      __$$_FacilitiesParamsModelCopyWithImpl<$Res>;
  @override
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class __$$_FacilitiesParamsModelCopyWithImpl<$Res>
    extends _$FacilitiesParamsModelCopyWithImpl<$Res>
    implements _$$_FacilitiesParamsModelCopyWith<$Res> {
  __$$_FacilitiesParamsModelCopyWithImpl(_$_FacilitiesParamsModel _value,
      $Res Function(_$_FacilitiesParamsModel) _then)
      : super(_value, (v) => _then(v as _$_FacilitiesParamsModel));

  @override
  _$_FacilitiesParamsModel get _value =>
      super._value as _$_FacilitiesParamsModel;

  @override
  $Res call({
    Object? fields = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_FacilitiesParamsModel(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilitiesParamsModel implements _FacilitiesParamsModel {
  _$_FacilitiesParamsModel({this.fields, this.from, this.to});

  factory _$_FacilitiesParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilitiesParamsModelFromJson(json);

  @override
  final String? fields;
  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'FacilitiesParamsModel(fields: $fields, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilitiesParamsModel &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fields),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$$_FacilitiesParamsModelCopyWith<_$_FacilitiesParamsModel> get copyWith =>
      __$$_FacilitiesParamsModelCopyWithImpl<_$_FacilitiesParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilitiesParamsModelToJson(
      this,
    );
  }
}

abstract class _FacilitiesParamsModel implements FacilitiesParamsModel {
  factory _FacilitiesParamsModel(
      {final String? fields,
      final String? from,
      final String? to}) = _$_FacilitiesParamsModel;

  factory _FacilitiesParamsModel.fromJson(Map<String, dynamic> json) =
      _$_FacilitiesParamsModel.fromJson;

  @override
  String? get fields;
  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$_FacilitiesParamsModelCopyWith<_$_FacilitiesParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
