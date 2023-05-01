// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_availability_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAvailabilityResponse _$CheckAvailabilityResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckAvailabilityResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotels')
  @HiveField(1)
  AvailableHotels? get availableHotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAvailabilityResponseCopyWith<CheckAvailabilityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAvailabilityResponseCopyWith<$Res> {
  factory $CheckAvailabilityResponseCopyWith(CheckAvailabilityResponse value,
          $Res Function(CheckAvailabilityResponse) then) =
      _$CheckAvailabilityResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotels') @HiveField(1) AvailableHotels? availableHotels});

  $AuditDataCopyWith<$Res>? get auditData;
  $AvailableHotelsCopyWith<$Res>? get availableHotels;
}

/// @nodoc
class _$CheckAvailabilityResponseCopyWithImpl<$Res>
    implements $CheckAvailabilityResponseCopyWith<$Res> {
  _$CheckAvailabilityResponseCopyWithImpl(this._value, this._then);

  final CheckAvailabilityResponse _value;
  // ignore: unused_field
  final $Res Function(CheckAvailabilityResponse) _then;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? availableHotels = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      availableHotels: availableHotels == freezed
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as AvailableHotels?,
    ));
  }

  @override
  $AuditDataCopyWith<$Res>? get auditData {
    if (_value.auditData == null) {
      return null;
    }

    return $AuditDataCopyWith<$Res>(_value.auditData!, (value) {
      return _then(_value.copyWith(auditData: value));
    });
  }

  @override
  $AvailableHotelsCopyWith<$Res>? get availableHotels {
    if (_value.availableHotels == null) {
      return null;
    }

    return $AvailableHotelsCopyWith<$Res>(_value.availableHotels!, (value) {
      return _then(_value.copyWith(availableHotels: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckAvailabilityResponseCopyWith<$Res>
    implements $CheckAvailabilityResponseCopyWith<$Res> {
  factory _$$_CheckAvailabilityResponseCopyWith(
          _$_CheckAvailabilityResponse value,
          $Res Function(_$_CheckAvailabilityResponse) then) =
      __$$_CheckAvailabilityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotels') @HiveField(1) AvailableHotels? availableHotels});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $AvailableHotelsCopyWith<$Res>? get availableHotels;
}

/// @nodoc
class __$$_CheckAvailabilityResponseCopyWithImpl<$Res>
    extends _$CheckAvailabilityResponseCopyWithImpl<$Res>
    implements _$$_CheckAvailabilityResponseCopyWith<$Res> {
  __$$_CheckAvailabilityResponseCopyWithImpl(
      _$_CheckAvailabilityResponse _value,
      $Res Function(_$_CheckAvailabilityResponse) _then)
      : super(_value, (v) => _then(v as _$_CheckAvailabilityResponse));

  @override
  _$_CheckAvailabilityResponse get _value =>
      super._value as _$_CheckAvailabilityResponse;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? availableHotels = freezed,
  }) {
    return _then(_$_CheckAvailabilityResponse(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      availableHotels: availableHotels == freezed
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as AvailableHotels?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckAvailabilityResponse implements _CheckAvailabilityResponse {
  _$_CheckAvailabilityResponse(
      {@HiveField(0) this.auditData,
      @JsonKey(name: 'hotels') @HiveField(1) this.availableHotels});

  factory _$_CheckAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheckAvailabilityResponseFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(1)
  final AvailableHotels? availableHotels;

  @override
  String toString() {
    return 'CheckAvailabilityResponse(auditData: $auditData, availableHotels: $availableHotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckAvailabilityResponse &&
            const DeepCollectionEquality().equals(other.auditData, auditData) &&
            const DeepCollectionEquality()
                .equals(other.availableHotels, availableHotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auditData),
      const DeepCollectionEquality().hash(availableHotels));

  @JsonKey(ignore: true)
  @override
  _$$_CheckAvailabilityResponseCopyWith<_$_CheckAvailabilityResponse>
      get copyWith => __$$_CheckAvailabilityResponseCopyWithImpl<
          _$_CheckAvailabilityResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckAvailabilityResponseToJson(
      this,
    );
  }
}

abstract class _CheckAvailabilityResponse implements CheckAvailabilityResponse {
  factory _CheckAvailabilityResponse(
          {@HiveField(0)
              final AuditData? auditData,
          @JsonKey(name: 'hotels')
          @HiveField(1)
              final AvailableHotels? availableHotels}) =
      _$_CheckAvailabilityResponse;

  factory _CheckAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckAvailabilityResponse.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(1)
  AvailableHotels? get availableHotels;
  @override
  @JsonKey(ignore: true)
  _$$_CheckAvailabilityResponseCopyWith<_$_CheckAvailabilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}
