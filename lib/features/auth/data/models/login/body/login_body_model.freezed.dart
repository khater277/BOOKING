// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginBodyModel _$LoginBodyModelFromJson(Map<String, dynamic> json) {
  return _LoginBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LoginBodyModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginBodyModelCopyWith<LoginBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBodyModelCopyWith<$Res> {
  factory $LoginBodyModelCopyWith(
          LoginBodyModel value, $Res Function(LoginBodyModel) then) =
      _$LoginBodyModelCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginBodyModelCopyWithImpl<$Res>
    implements $LoginBodyModelCopyWith<$Res> {
  _$LoginBodyModelCopyWithImpl(this._value, this._then);

  final LoginBodyModel _value;
  // ignore: unused_field
  final $Res Function(LoginBodyModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginBodyModelCopyWith<$Res>
    implements $LoginBodyModelCopyWith<$Res> {
  factory _$$_LoginBodyModelCopyWith(
          _$_LoginBodyModel value, $Res Function(_$_LoginBodyModel) then) =
      __$$_LoginBodyModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginBodyModelCopyWithImpl<$Res>
    extends _$LoginBodyModelCopyWithImpl<$Res>
    implements _$$_LoginBodyModelCopyWith<$Res> {
  __$$_LoginBodyModelCopyWithImpl(
      _$_LoginBodyModel _value, $Res Function(_$_LoginBodyModel) _then)
      : super(_value, (v) => _then(v as _$_LoginBodyModel));

  @override
  _$_LoginBodyModel get _value => super._value as _$_LoginBodyModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginBodyModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginBodyModel implements _LoginBodyModel {
  const _$_LoginBodyModel({required this.email, required this.password});

  factory _$_LoginBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginBodyModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginBodyModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginBodyModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginBodyModelCopyWith<_$_LoginBodyModel> get copyWith =>
      __$$_LoginBodyModelCopyWithImpl<_$_LoginBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginBodyModelToJson(
      this,
    );
  }
}

abstract class _LoginBodyModel implements LoginBodyModel {
  const factory _LoginBodyModel(
      {required final String email,
      required final String password}) = _$_LoginBodyModel;

  factory _LoginBodyModel.fromJson(Map<String, dynamic> json) =
      _$_LoginBodyModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginBodyModelCopyWith<_$_LoginBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
