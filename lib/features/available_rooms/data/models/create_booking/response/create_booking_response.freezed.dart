// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_booking_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBookingResponse _$CreateBookingResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateBookingResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @HiveField(1)
  Booking? get booking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingResponseCopyWith<CreateBookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingResponseCopyWith<$Res> {
  factory $CreateBookingResponseCopyWith(CreateBookingResponse value,
          $Res Function(CreateBookingResponse) then) =
      _$CreateBookingResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) AuditData? auditData, @HiveField(1) Booking? booking});

  $AuditDataCopyWith<$Res>? get auditData;
  $BookingCopyWith<$Res>? get booking;
}

/// @nodoc
class _$CreateBookingResponseCopyWithImpl<$Res>
    implements $CreateBookingResponseCopyWith<$Res> {
  _$CreateBookingResponseCopyWithImpl(this._value, this._then);

  final CreateBookingResponse _value;
  // ignore: unused_field
  final $Res Function(CreateBookingResponse) _then;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? booking = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      booking: booking == freezed
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
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
  $BookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $BookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateBookingResponseCopyWith<$Res>
    implements $CreateBookingResponseCopyWith<$Res> {
  factory _$$_CreateBookingResponseCopyWith(_$_CreateBookingResponse value,
          $Res Function(_$_CreateBookingResponse) then) =
      __$$_CreateBookingResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) AuditData? auditData, @HiveField(1) Booking? booking});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $BookingCopyWith<$Res>? get booking;
}

/// @nodoc
class __$$_CreateBookingResponseCopyWithImpl<$Res>
    extends _$CreateBookingResponseCopyWithImpl<$Res>
    implements _$$_CreateBookingResponseCopyWith<$Res> {
  __$$_CreateBookingResponseCopyWithImpl(_$_CreateBookingResponse _value,
      $Res Function(_$_CreateBookingResponse) _then)
      : super(_value, (v) => _then(v as _$_CreateBookingResponse));

  @override
  _$_CreateBookingResponse get _value =>
      super._value as _$_CreateBookingResponse;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? booking = freezed,
  }) {
    return _then(_$_CreateBookingResponse(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      booking: booking == freezed
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateBookingResponse implements _CreateBookingResponse {
  _$_CreateBookingResponse(
      {@HiveField(0) this.auditData, @HiveField(1) this.booking});

  factory _$_CreateBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateBookingResponseFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @HiveField(1)
  final Booking? booking;

  @override
  String toString() {
    return 'CreateBookingResponse(auditData: $auditData, booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBookingResponse &&
            const DeepCollectionEquality().equals(other.auditData, auditData) &&
            const DeepCollectionEquality().equals(other.booking, booking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auditData),
      const DeepCollectionEquality().hash(booking));

  @JsonKey(ignore: true)
  @override
  _$$_CreateBookingResponseCopyWith<_$_CreateBookingResponse> get copyWith =>
      __$$_CreateBookingResponseCopyWithImpl<_$_CreateBookingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateBookingResponseToJson(
      this,
    );
  }
}

abstract class _CreateBookingResponse implements CreateBookingResponse {
  factory _CreateBookingResponse(
      {@HiveField(0) final AuditData? auditData,
      @HiveField(1) final Booking? booking}) = _$_CreateBookingResponse;

  factory _CreateBookingResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateBookingResponse.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @HiveField(1)
  Booking? get booking;
  @override
  @JsonKey(ignore: true)
  _$$_CreateBookingResponseCopyWith<_$_CreateBookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
