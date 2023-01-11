// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facilities_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilitiesBodyModel _$FacilitiesBodyModelFromJson(Map<String, dynamic> json) {
  return _FacilitiesBodyModel.fromJson(json);
}

/// @nodoc
mixin _$FacilitiesBodyModel {
  String? get fields => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesBodyModelCopyWith<FacilitiesBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesBodyModelCopyWith<$Res> {
  factory $FacilitiesBodyModelCopyWith(
          FacilitiesBodyModel value, $Res Function(FacilitiesBodyModel) then) =
      _$FacilitiesBodyModelCopyWithImpl<$Res>;
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class _$FacilitiesBodyModelCopyWithImpl<$Res>
    implements $FacilitiesBodyModelCopyWith<$Res> {
  _$FacilitiesBodyModelCopyWithImpl(this._value, this._then);

  final FacilitiesBodyModel _value;
  // ignore: unused_field
  final $Res Function(FacilitiesBodyModel) _then;

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
abstract class _$$_FacilitiesBodyModelCopyWith<$Res>
    implements $FacilitiesBodyModelCopyWith<$Res> {
  factory _$$_FacilitiesBodyModelCopyWith(_$_FacilitiesBodyModel value,
          $Res Function(_$_FacilitiesBodyModel) then) =
      __$$_FacilitiesBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class __$$_FacilitiesBodyModelCopyWithImpl<$Res>
    extends _$FacilitiesBodyModelCopyWithImpl<$Res>
    implements _$$_FacilitiesBodyModelCopyWith<$Res> {
  __$$_FacilitiesBodyModelCopyWithImpl(_$_FacilitiesBodyModel _value,
      $Res Function(_$_FacilitiesBodyModel) _then)
      : super(_value, (v) => _then(v as _$_FacilitiesBodyModel));

  @override
  _$_FacilitiesBodyModel get _value => super._value as _$_FacilitiesBodyModel;

  @override
  $Res call({
    Object? fields = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_FacilitiesBodyModel(
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
class _$_FacilitiesBodyModel implements _FacilitiesBodyModel {
  _$_FacilitiesBodyModel({this.fields, this.from, this.to});

  factory _$_FacilitiesBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilitiesBodyModelFromJson(json);

  @override
  final String? fields;
  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'FacilitiesBodyModel(fields: $fields, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilitiesBodyModel &&
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
  _$$_FacilitiesBodyModelCopyWith<_$_FacilitiesBodyModel> get copyWith =>
      __$$_FacilitiesBodyModelCopyWithImpl<_$_FacilitiesBodyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilitiesBodyModelToJson(
      this,
    );
  }
}

abstract class _FacilitiesBodyModel implements FacilitiesBodyModel {
  factory _FacilitiesBodyModel(
      {final String? fields,
      final String? from,
      final String? to}) = _$_FacilitiesBodyModel;

  factory _FacilitiesBodyModel.fromJson(Map<String, dynamic> json) =
      _$_FacilitiesBodyModel.fromJson;

  @override
  String? get fields;
  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$_FacilitiesBodyModelCopyWith<_$_FacilitiesBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
