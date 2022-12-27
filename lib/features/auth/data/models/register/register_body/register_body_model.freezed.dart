// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterBodyModel _$RegisterBodyModelFromJson(Map<String, dynamic> json) {
  return _RegisterBodyModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterBodyModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterBodyModelCopyWith<RegisterBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBodyModelCopyWith<$Res> {
  factory $RegisterBodyModelCopyWith(
          RegisterBodyModel value, $Res Function(RegisterBodyModel) then) =
      _$RegisterBodyModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: "password_confirmation") String passwordConfirmation});
}

/// @nodoc
class _$RegisterBodyModelCopyWithImpl<$Res>
    implements $RegisterBodyModelCopyWith<$Res> {
  _$RegisterBodyModelCopyWithImpl(this._value, this._then);

  final RegisterBodyModel _value;
  // ignore: unused_field
  final $Res Function(RegisterBodyModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterBodyModelCopyWith<$Res>
    implements $RegisterBodyModelCopyWith<$Res> {
  factory _$$_RegisterBodyModelCopyWith(_$_RegisterBodyModel value,
          $Res Function(_$_RegisterBodyModel) then) =
      __$$_RegisterBodyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: "password_confirmation") String passwordConfirmation});
}

/// @nodoc
class __$$_RegisterBodyModelCopyWithImpl<$Res>
    extends _$RegisterBodyModelCopyWithImpl<$Res>
    implements _$$_RegisterBodyModelCopyWith<$Res> {
  __$$_RegisterBodyModelCopyWithImpl(
      _$_RegisterBodyModel _value, $Res Function(_$_RegisterBodyModel) _then)
      : super(_value, (v) => _then(v as _$_RegisterBodyModel));

  @override
  _$_RegisterBodyModel get _value => super._value as _$_RegisterBodyModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_$_RegisterBodyModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterBodyModel implements _RegisterBodyModel {
  const _$_RegisterBodyModel(
      {required this.name,
      required this.email,
      required this.password,
      @JsonKey(name: "password_confirmation")
          required this.passwordConfirmation});

  factory _$_RegisterBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterBodyModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  @override
  String toString() {
    return 'RegisterBodyModel(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterBodyModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.passwordConfirmation, passwordConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordConfirmation));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterBodyModelCopyWith<_$_RegisterBodyModel> get copyWith =>
      __$$_RegisterBodyModelCopyWithImpl<_$_RegisterBodyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterBodyModelToJson(
      this,
    );
  }
}

abstract class _RegisterBodyModel implements RegisterBodyModel {
  const factory _RegisterBodyModel(
      {required final String name,
      required final String email,
      required final String password,
      @JsonKey(name: "password_confirmation")
          required final String passwordConfirmation}) = _$_RegisterBodyModel;

  factory _RegisterBodyModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterBodyModel.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: "password_confirmation")
  String get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterBodyModelCopyWith<_$_RegisterBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
