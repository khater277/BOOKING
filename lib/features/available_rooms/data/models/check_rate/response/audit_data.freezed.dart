// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audit_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuditData _$AuditDataFromJson(Map<String, dynamic> json) {
  return _AuditData.fromJson(json);
}

/// @nodoc
mixin _$AuditData {
  @HiveField(0)
  String? get processTime => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get timestamp => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get requestHost => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get serverId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get environment => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get release => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get internal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditDataCopyWith<AuditData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDataCopyWith<$Res> {
  factory $AuditDataCopyWith(AuditData value, $Res Function(AuditData) then) =
      _$AuditDataCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? processTime,
      @HiveField(1) String? timestamp,
      @HiveField(2) String? requestHost,
      @HiveField(3) String? serverId,
      @HiveField(4) String? environment,
      @HiveField(5) String? release,
      @HiveField(6) String? token,
      @HiveField(7) String? internal});
}

/// @nodoc
class _$AuditDataCopyWithImpl<$Res> implements $AuditDataCopyWith<$Res> {
  _$AuditDataCopyWithImpl(this._value, this._then);

  final AuditData _value;
  // ignore: unused_field
  final $Res Function(AuditData) _then;

  @override
  $Res call({
    Object? processTime = freezed,
    Object? timestamp = freezed,
    Object? requestHost = freezed,
    Object? serverId = freezed,
    Object? environment = freezed,
    Object? release = freezed,
    Object? token = freezed,
    Object? internal = freezed,
  }) {
    return _then(_value.copyWith(
      processTime: processTime == freezed
          ? _value.processTime
          : processTime // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      requestHost: requestHost == freezed
          ? _value.requestHost
          : requestHost // ignore: cast_nullable_to_non_nullable
              as String?,
      serverId: serverId == freezed
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: internal == freezed
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuditDataCopyWith<$Res> implements $AuditDataCopyWith<$Res> {
  factory _$$_AuditDataCopyWith(
          _$_AuditData value, $Res Function(_$_AuditData) then) =
      __$$_AuditDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? processTime,
      @HiveField(1) String? timestamp,
      @HiveField(2) String? requestHost,
      @HiveField(3) String? serverId,
      @HiveField(4) String? environment,
      @HiveField(5) String? release,
      @HiveField(6) String? token,
      @HiveField(7) String? internal});
}

/// @nodoc
class __$$_AuditDataCopyWithImpl<$Res> extends _$AuditDataCopyWithImpl<$Res>
    implements _$$_AuditDataCopyWith<$Res> {
  __$$_AuditDataCopyWithImpl(
      _$_AuditData _value, $Res Function(_$_AuditData) _then)
      : super(_value, (v) => _then(v as _$_AuditData));

  @override
  _$_AuditData get _value => super._value as _$_AuditData;

  @override
  $Res call({
    Object? processTime = freezed,
    Object? timestamp = freezed,
    Object? requestHost = freezed,
    Object? serverId = freezed,
    Object? environment = freezed,
    Object? release = freezed,
    Object? token = freezed,
    Object? internal = freezed,
  }) {
    return _then(_$_AuditData(
      processTime: processTime == freezed
          ? _value.processTime
          : processTime // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      requestHost: requestHost == freezed
          ? _value.requestHost
          : requestHost // ignore: cast_nullable_to_non_nullable
              as String?,
      serverId: serverId == freezed
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: internal == freezed
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuditData implements _AuditData {
  _$_AuditData(
      {@HiveField(0) this.processTime,
      @HiveField(1) this.timestamp,
      @HiveField(2) this.requestHost,
      @HiveField(3) this.serverId,
      @HiveField(4) this.environment,
      @HiveField(5) this.release,
      @HiveField(6) this.token,
      @HiveField(7) this.internal});

  factory _$_AuditData.fromJson(Map<String, dynamic> json) =>
      _$$_AuditDataFromJson(json);

  @override
  @HiveField(0)
  final String? processTime;
  @override
  @HiveField(1)
  final String? timestamp;
  @override
  @HiveField(2)
  final String? requestHost;
  @override
  @HiveField(3)
  final String? serverId;
  @override
  @HiveField(4)
  final String? environment;
  @override
  @HiveField(5)
  final String? release;
  @override
  @HiveField(6)
  final String? token;
  @override
  @HiveField(7)
  final String? internal;

  @override
  String toString() {
    return 'AuditData(processTime: $processTime, timestamp: $timestamp, requestHost: $requestHost, serverId: $serverId, environment: $environment, release: $release, token: $token, internal: $internal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuditData &&
            const DeepCollectionEquality()
                .equals(other.processTime, processTime) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.requestHost, requestHost) &&
            const DeepCollectionEquality().equals(other.serverId, serverId) &&
            const DeepCollectionEquality()
                .equals(other.environment, environment) &&
            const DeepCollectionEquality().equals(other.release, release) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.internal, internal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(processTime),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(requestHost),
      const DeepCollectionEquality().hash(serverId),
      const DeepCollectionEquality().hash(environment),
      const DeepCollectionEquality().hash(release),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(internal));

  @JsonKey(ignore: true)
  @override
  _$$_AuditDataCopyWith<_$_AuditData> get copyWith =>
      __$$_AuditDataCopyWithImpl<_$_AuditData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuditDataToJson(
      this,
    );
  }
}

abstract class _AuditData implements AuditData {
  factory _AuditData(
      {@HiveField(0) final String? processTime,
      @HiveField(1) final String? timestamp,
      @HiveField(2) final String? requestHost,
      @HiveField(3) final String? serverId,
      @HiveField(4) final String? environment,
      @HiveField(5) final String? release,
      @HiveField(6) final String? token,
      @HiveField(7) final String? internal}) = _$_AuditData;

  factory _AuditData.fromJson(Map<String, dynamic> json) =
      _$_AuditData.fromJson;

  @override
  @HiveField(0)
  String? get processTime;
  @override
  @HiveField(1)
  String? get timestamp;
  @override
  @HiveField(2)
  String? get requestHost;
  @override
  @HiveField(3)
  String? get serverId;
  @override
  @HiveField(4)
  String? get environment;
  @override
  @HiveField(5)
  String? get release;
  @override
  @HiveField(6)
  String? get token;
  @override
  @HiveField(7)
  String? get internal;
  @override
  @JsonKey(ignore: true)
  _$$_AuditDataCopyWith<_$_AuditData> get copyWith =>
      throw _privateConstructorUsedError;
}
