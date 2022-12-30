// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) {
  return _AuthBody.fromJson(json);
}

/// @nodoc
mixin _$AuthBody {
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthBodyCopyWith<AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBodyCopyWith<$Res> {
  factory $AuthBodyCopyWith(AuthBody value, $Res Function(AuthBody) then) =
      _$AuthBodyCopyWithImpl<$Res>;
  $Res call({String? name, String email, String password});
}

/// @nodoc
class _$AuthBodyCopyWithImpl<$Res> implements $AuthBodyCopyWith<$Res> {
  _$AuthBodyCopyWithImpl(this._value, this._then);

  final AuthBody _value;
  // ignore: unused_field
  final $Res Function(AuthBody) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_AuthBodyCopyWith<$Res> implements $AuthBodyCopyWith<$Res> {
  factory _$$_AuthBodyCopyWith(
          _$_AuthBody value, $Res Function(_$_AuthBody) then) =
      __$$_AuthBodyCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String email, String password});
}

/// @nodoc
class __$$_AuthBodyCopyWithImpl<$Res> extends _$AuthBodyCopyWithImpl<$Res>
    implements _$$_AuthBodyCopyWith<$Res> {
  __$$_AuthBodyCopyWithImpl(
      _$_AuthBody _value, $Res Function(_$_AuthBody) _then)
      : super(_value, (v) => _then(v as _$_AuthBody));

  @override
  _$_AuthBody get _value => super._value as _$_AuthBody;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthBody(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_AuthBody implements _AuthBody {
  const _$_AuthBody({this.name, required this.email, required this.password});

  factory _$_AuthBody.fromJson(Map<String, dynamic> json) =>
      _$$_AuthBodyFromJson(json);

  @override
  final String? name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBody(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthBody &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthBodyCopyWith<_$_AuthBody> get copyWith =>
      __$$_AuthBodyCopyWithImpl<_$_AuthBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthBodyToJson(
      this,
    );
  }
}

abstract class _AuthBody implements AuthBody {
  const factory _AuthBody(
      {final String? name,
      required final String email,
      required final String password}) = _$_AuthBody;

  factory _AuthBody.fromJson(Map<String, dynamic> json) = _$_AuthBody.fromJson;

  @override
  String? get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthBodyCopyWith<_$_AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}
