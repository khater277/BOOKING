// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_rate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckRateResponse _$CheckRateResponseFromJson(Map<String, dynamic> json) {
  return _CheckRateResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckRateResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel')
  @HiveField(1)
  RateHotel? get rateHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckRateResponseCopyWith<CheckRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRateResponseCopyWith<$Res> {
  factory $CheckRateResponseCopyWith(
          CheckRateResponse value, $Res Function(CheckRateResponse) then) =
      _$CheckRateResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotel') @HiveField(1) RateHotel? rateHotel});

  $AuditDataCopyWith<$Res>? get auditData;
  $RateHotelCopyWith<$Res>? get rateHotel;
}

/// @nodoc
class _$CheckRateResponseCopyWithImpl<$Res>
    implements $CheckRateResponseCopyWith<$Res> {
  _$CheckRateResponseCopyWithImpl(this._value, this._then);

  final CheckRateResponse _value;
  // ignore: unused_field
  final $Res Function(CheckRateResponse) _then;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? rateHotel = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      rateHotel: rateHotel == freezed
          ? _value.rateHotel
          : rateHotel // ignore: cast_nullable_to_non_nullable
              as RateHotel?,
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
  $RateHotelCopyWith<$Res>? get rateHotel {
    if (_value.rateHotel == null) {
      return null;
    }

    return $RateHotelCopyWith<$Res>(_value.rateHotel!, (value) {
      return _then(_value.copyWith(rateHotel: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckRateResponseCopyWith<$Res>
    implements $CheckRateResponseCopyWith<$Res> {
  factory _$$_CheckRateResponseCopyWith(_$_CheckRateResponse value,
          $Res Function(_$_CheckRateResponse) then) =
      __$$_CheckRateResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotel') @HiveField(1) RateHotel? rateHotel});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $RateHotelCopyWith<$Res>? get rateHotel;
}

/// @nodoc
class __$$_CheckRateResponseCopyWithImpl<$Res>
    extends _$CheckRateResponseCopyWithImpl<$Res>
    implements _$$_CheckRateResponseCopyWith<$Res> {
  __$$_CheckRateResponseCopyWithImpl(
      _$_CheckRateResponse _value, $Res Function(_$_CheckRateResponse) _then)
      : super(_value, (v) => _then(v as _$_CheckRateResponse));

  @override
  _$_CheckRateResponse get _value => super._value as _$_CheckRateResponse;

  @override
  $Res call({
    Object? auditData = freezed,
    Object? rateHotel = freezed,
  }) {
    return _then(_$_CheckRateResponse(
      auditData: auditData == freezed
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      rateHotel: rateHotel == freezed
          ? _value.rateHotel
          : rateHotel // ignore: cast_nullable_to_non_nullable
              as RateHotel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckRateResponse implements _CheckRateResponse {
  _$_CheckRateResponse(
      {@HiveField(0) this.auditData,
      @JsonKey(name: 'hotel') @HiveField(1) this.rateHotel});

  factory _$_CheckRateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheckRateResponseFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(1)
  final RateHotel? rateHotel;

  @override
  String toString() {
    return 'CheckRateResponse(auditData: $auditData, rateHotel: $rateHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckRateResponse &&
            const DeepCollectionEquality().equals(other.auditData, auditData) &&
            const DeepCollectionEquality().equals(other.rateHotel, rateHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auditData),
      const DeepCollectionEquality().hash(rateHotel));

  @JsonKey(ignore: true)
  @override
  _$$_CheckRateResponseCopyWith<_$_CheckRateResponse> get copyWith =>
      __$$_CheckRateResponseCopyWithImpl<_$_CheckRateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckRateResponseToJson(
      this,
    );
  }
}

abstract class _CheckRateResponse implements CheckRateResponse {
  factory _CheckRateResponse(
          {@HiveField(0) final AuditData? auditData,
          @JsonKey(name: 'hotel') @HiveField(1) final RateHotel? rateHotel}) =
      _$_CheckRateResponse;

  factory _CheckRateResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckRateResponse.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(1)
  RateHotel? get rateHotel;
  @override
  @JsonKey(ignore: true)
  _$$_CheckRateResponseCopyWith<_$_CheckRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
