// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) {
  return _AuthResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseModel {
  @HiveField(0)
  Status? get status => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "data")
  AuthData? get authData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseModelCopyWith<AuthResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseModelCopyWith<$Res> {
  factory $AuthResponseModelCopyWith(
          AuthResponseModel value, $Res Function(AuthResponseModel) then) =
      _$AuthResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) Status? status,
      @HiveField(1) @JsonKey(name: "data") AuthData? authData});

  $StatusCopyWith<$Res>? get status;
  $AuthDataCopyWith<$Res>? get authData;
}

/// @nodoc
class _$AuthResponseModelCopyWithImpl<$Res>
    implements $AuthResponseModelCopyWith<$Res> {
  _$AuthResponseModelCopyWithImpl(this._value, this._then);

  final AuthResponseModel _value;
  // ignore: unused_field
  final $Res Function(AuthResponseModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? authData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      authData: authData == freezed
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData?,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $AuthDataCopyWith<$Res>? get authData {
    if (_value.authData == null) {
      return null;
    }

    return $AuthDataCopyWith<$Res>(_value.authData!, (value) {
      return _then(_value.copyWith(authData: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthResponseModelCopyWith<$Res>
    implements $AuthResponseModelCopyWith<$Res> {
  factory _$$_AuthResponseModelCopyWith(_$_AuthResponseModel value,
          $Res Function(_$_AuthResponseModel) then) =
      __$$_AuthResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) Status? status,
      @HiveField(1) @JsonKey(name: "data") AuthData? authData});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $AuthDataCopyWith<$Res>? get authData;
}

/// @nodoc
class __$$_AuthResponseModelCopyWithImpl<$Res>
    extends _$AuthResponseModelCopyWithImpl<$Res>
    implements _$$_AuthResponseModelCopyWith<$Res> {
  __$$_AuthResponseModelCopyWithImpl(
      _$_AuthResponseModel _value, $Res Function(_$_AuthResponseModel) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseModel));

  @override
  _$_AuthResponseModel get _value => super._value as _$_AuthResponseModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? authData = freezed,
  }) {
    return _then(_$_AuthResponseModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      authData: authData == freezed
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponseModel implements _AuthResponseModel {
  const _$_AuthResponseModel(
      {@HiveField(0) this.status,
      @HiveField(1) @JsonKey(name: "data") this.authData});

  factory _$_AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseModelFromJson(json);

  @override
  @HiveField(0)
  final Status? status;
  @override
  @HiveField(1)
  @JsonKey(name: "data")
  final AuthData? authData;

  @override
  String toString() {
    return 'AuthResponseModel(status: $status, authData: $authData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.authData, authData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(authData));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseModelCopyWith<_$_AuthResponseModel> get copyWith =>
      __$$_AuthResponseModelCopyWithImpl<_$_AuthResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseModelToJson(
      this,
    );
  }
}

abstract class _AuthResponseModel implements AuthResponseModel {
  const factory _AuthResponseModel(
          {@HiveField(0) final Status? status,
          @HiveField(1) @JsonKey(name: "data") final AuthData? authData}) =
      _$_AuthResponseModel;

  factory _AuthResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseModel.fromJson;

  @override
  @HiveField(0)
  Status? get status;
  @override
  @HiveField(1)
  @JsonKey(name: "data")
  AuthData? get authData;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseModelCopyWith<_$_AuthResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
mixin _$AuthData {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get apiToken => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get googleId => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? email,
      @HiveField(3) String? emailVerifiedAt,
      @HiveField(4) String? apiToken,
      @HiveField(5) String? image,
      @HiveField(6) DateTime? createdAt,
      @HiveField(7) DateTime? updatedAt,
      @HiveField(8) String? googleId,
      @HiveField(9) String? provider});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res> implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  final AuthData _value;
  // ignore: unused_field
  final $Res Function(AuthData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? apiToken = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? googleId = freezed,
    Object? provider = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      apiToken: apiToken == freezed
          ? _value.apiToken
          : apiToken // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      googleId: googleId == freezed
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$$_AuthDataCopyWith(
          _$_AuthData value, $Res Function(_$_AuthData) then) =
      __$$_AuthDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? email,
      @HiveField(3) String? emailVerifiedAt,
      @HiveField(4) String? apiToken,
      @HiveField(5) String? image,
      @HiveField(6) DateTime? createdAt,
      @HiveField(7) DateTime? updatedAt,
      @HiveField(8) String? googleId,
      @HiveField(9) String? provider});
}

/// @nodoc
class __$$_AuthDataCopyWithImpl<$Res> extends _$AuthDataCopyWithImpl<$Res>
    implements _$$_AuthDataCopyWith<$Res> {
  __$$_AuthDataCopyWithImpl(
      _$_AuthData _value, $Res Function(_$_AuthData) _then)
      : super(_value, (v) => _then(v as _$_AuthData));

  @override
  _$_AuthData get _value => super._value as _$_AuthData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? apiToken = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? googleId = freezed,
    Object? provider = freezed,
  }) {
    return _then(_$_AuthData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      apiToken: apiToken == freezed
          ? _value.apiToken
          : apiToken // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      googleId: googleId == freezed
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthData implements _AuthData {
  const _$_AuthData(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.email,
      @HiveField(3) this.emailVerifiedAt,
      @HiveField(4) this.apiToken,
      @HiveField(5) this.image,
      @HiveField(6) this.createdAt,
      @HiveField(7) this.updatedAt,
      @HiveField(8) this.googleId,
      @HiveField(9) this.provider});

  factory _$_AuthData.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDataFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  final String? emailVerifiedAt;
  @override
  @HiveField(4)
  final String? apiToken;
  @override
  @HiveField(5)
  final String? image;
  @override
  @HiveField(6)
  final DateTime? createdAt;
  @override
  @HiveField(7)
  final DateTime? updatedAt;
  @override
  @HiveField(8)
  final String? googleId;
  @override
  @HiveField(9)
  final String? provider;

  @override
  String toString() {
    return 'AuthData(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, apiToken: $apiToken, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, googleId: $googleId, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.apiToken, apiToken) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.googleId, googleId) &&
            const DeepCollectionEquality().equals(other.provider, provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerifiedAt),
      const DeepCollectionEquality().hash(apiToken),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(googleId),
      const DeepCollectionEquality().hash(provider));

  @JsonKey(ignore: true)
  @override
  _$$_AuthDataCopyWith<_$_AuthData> get copyWith =>
      __$$_AuthDataCopyWithImpl<_$_AuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDataToJson(
      this,
    );
  }
}

abstract class _AuthData implements AuthData {
  const factory _AuthData(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name,
      @HiveField(2) final String? email,
      @HiveField(3) final String? emailVerifiedAt,
      @HiveField(4) final String? apiToken,
      @HiveField(5) final String? image,
      @HiveField(6) final DateTime? createdAt,
      @HiveField(7) final DateTime? updatedAt,
      @HiveField(8) final String? googleId,
      @HiveField(9) final String? provider}) = _$_AuthData;

  factory _AuthData.fromJson(Map<String, dynamic> json) = _$_AuthData.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  String? get emailVerifiedAt;
  @override
  @HiveField(4)
  String? get apiToken;
  @override
  @HiveField(5)
  String? get image;
  @override
  @HiveField(6)
  DateTime? get createdAt;
  @override
  @HiveField(7)
  DateTime? get updatedAt;
  @override
  @HiveField(8)
  String? get googleId;
  @override
  @HiveField(9)
  String? get provider;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDataCopyWith<_$_AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  @HiveField(0)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(1)
  Title? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? type, @HiveField(1) Title? title});

  $TitleCopyWith<$Res>? get title;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
    ));
  }

  @override
  $TitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $TitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value));
    });
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? type, @HiveField(1) Title? title});

  @override
  $TitleCopyWith<$Res>? get title;
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, (v) => _then(v as _$_Status));

  @override
  _$_Status get _value => super._value as _$_Status;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_Status(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status({@HiveField(0) this.type, @HiveField(1) this.title});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  @HiveField(0)
  final String? type;
  @override
  @HiveField(1)
  final Title? title;

  @override
  String toString() {
    return 'Status(type: $type, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {@HiveField(0) final String? type,
      @HiveField(1) final Title? title}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  @HiveField(0)
  String? get type;
  @override
  @HiveField(1)
  Title? get title;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  @HiveField(0)
  String? get ar => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? ar, @HiveField(1) String? en});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res> implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  final Title _value;
  // ignore: unused_field
  final $Res Function(Title) _then;

  @override
  $Res call({
    Object? ar = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ar: ar == freezed
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TitleCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$_TitleCopyWith(_$_Title value, $Res Function(_$_Title) then) =
      __$$_TitleCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? ar, @HiveField(1) String? en});
}

/// @nodoc
class __$$_TitleCopyWithImpl<$Res> extends _$TitleCopyWithImpl<$Res>
    implements _$$_TitleCopyWith<$Res> {
  __$$_TitleCopyWithImpl(_$_Title _value, $Res Function(_$_Title) _then)
      : super(_value, (v) => _then(v as _$_Title));

  @override
  _$_Title get _value => super._value as _$_Title;

  @override
  $Res call({
    Object? ar = freezed,
    Object? en = freezed,
  }) {
    return _then(_$_Title(
      ar: ar == freezed
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Title implements _Title {
  const _$_Title({@HiveField(0) this.ar, @HiveField(1) this.en});

  factory _$_Title.fromJson(Map<String, dynamic> json) =>
      _$$_TitleFromJson(json);

  @override
  @HiveField(0)
  final String? ar;
  @override
  @HiveField(1)
  final String? en;

  @override
  String toString() {
    return 'Title(ar: $ar, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Title &&
            const DeepCollectionEquality().equals(other.ar, ar) &&
            const DeepCollectionEquality().equals(other.en, en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ar),
      const DeepCollectionEquality().hash(en));

  @JsonKey(ignore: true)
  @override
  _$$_TitleCopyWith<_$_Title> get copyWith =>
      __$$_TitleCopyWithImpl<_$_Title>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  const factory _Title(
      {@HiveField(0) final String? ar,
      @HiveField(1) final String? en}) = _$_Title;

  factory _Title.fromJson(Map<String, dynamic> json) = _$_Title.fromJson;

  @override
  @HiveField(0)
  String? get ar;
  @override
  @HiveField(1)
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$_TitleCopyWith<_$_Title> get copyWith =>
      throw _privateConstructorUsedError;
}
