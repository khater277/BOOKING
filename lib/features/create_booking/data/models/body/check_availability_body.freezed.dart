// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_availability_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAvailabilityBody _$CheckAvailabilityBodyFromJson(
    Map<String, dynamic> json) {
  return _CheckAvailabilityBody.fromJson(json);
}

/// @nodoc
mixin _$CheckAvailabilityBody {
  Stay? get stay => throw _privateConstructorUsedError;
  List<Occupancy>? get occupancies => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotels')
  Hotels? get availabilityBodyHotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAvailabilityBodyCopyWith<CheckAvailabilityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAvailabilityBodyCopyWith<$Res> {
  factory $CheckAvailabilityBodyCopyWith(CheckAvailabilityBody value,
          $Res Function(CheckAvailabilityBody) then) =
      _$CheckAvailabilityBodyCopyWithImpl<$Res>;
  $Res call(
      {Stay? stay,
      List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') Hotels? availabilityBodyHotels});

  $StayCopyWith<$Res>? get stay;
  $HotelsCopyWith<$Res>? get availabilityBodyHotels;
}

/// @nodoc
class _$CheckAvailabilityBodyCopyWithImpl<$Res>
    implements $CheckAvailabilityBodyCopyWith<$Res> {
  _$CheckAvailabilityBodyCopyWithImpl(this._value, this._then);

  final CheckAvailabilityBody _value;
  // ignore: unused_field
  final $Res Function(CheckAvailabilityBody) _then;

  @override
  $Res call({
    Object? stay = freezed,
    Object? occupancies = freezed,
    Object? availabilityBodyHotels = freezed,
  }) {
    return _then(_value.copyWith(
      stay: stay == freezed
          ? _value.stay
          : stay // ignore: cast_nullable_to_non_nullable
              as Stay?,
      occupancies: occupancies == freezed
          ? _value.occupancies
          : occupancies // ignore: cast_nullable_to_non_nullable
              as List<Occupancy>?,
      availabilityBodyHotels: availabilityBodyHotels == freezed
          ? _value.availabilityBodyHotels
          : availabilityBodyHotels // ignore: cast_nullable_to_non_nullable
              as Hotels?,
    ));
  }

  @override
  $StayCopyWith<$Res>? get stay {
    if (_value.stay == null) {
      return null;
    }

    return $StayCopyWith<$Res>(_value.stay!, (value) {
      return _then(_value.copyWith(stay: value));
    });
  }

  @override
  $HotelsCopyWith<$Res>? get availabilityBodyHotels {
    if (_value.availabilityBodyHotels == null) {
      return null;
    }

    return $HotelsCopyWith<$Res>(_value.availabilityBodyHotels!, (value) {
      return _then(_value.copyWith(availabilityBodyHotels: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckAvailabilityBodyCopyWith<$Res>
    implements $CheckAvailabilityBodyCopyWith<$Res> {
  factory _$$_CheckAvailabilityBodyCopyWith(_$_CheckAvailabilityBody value,
          $Res Function(_$_CheckAvailabilityBody) then) =
      __$$_CheckAvailabilityBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stay? stay,
      List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') Hotels? availabilityBodyHotels});

  @override
  $StayCopyWith<$Res>? get stay;
  @override
  $HotelsCopyWith<$Res>? get availabilityBodyHotels;
}

/// @nodoc
class __$$_CheckAvailabilityBodyCopyWithImpl<$Res>
    extends _$CheckAvailabilityBodyCopyWithImpl<$Res>
    implements _$$_CheckAvailabilityBodyCopyWith<$Res> {
  __$$_CheckAvailabilityBodyCopyWithImpl(_$_CheckAvailabilityBody _value,
      $Res Function(_$_CheckAvailabilityBody) _then)
      : super(_value, (v) => _then(v as _$_CheckAvailabilityBody));

  @override
  _$_CheckAvailabilityBody get _value =>
      super._value as _$_CheckAvailabilityBody;

  @override
  $Res call({
    Object? stay = freezed,
    Object? occupancies = freezed,
    Object? availabilityBodyHotels = freezed,
  }) {
    return _then(_$_CheckAvailabilityBody(
      stay: stay == freezed
          ? _value.stay
          : stay // ignore: cast_nullable_to_non_nullable
              as Stay?,
      occupancies: occupancies == freezed
          ? _value._occupancies
          : occupancies // ignore: cast_nullable_to_non_nullable
              as List<Occupancy>?,
      availabilityBodyHotels: availabilityBodyHotels == freezed
          ? _value.availabilityBodyHotels
          : availabilityBodyHotels // ignore: cast_nullable_to_non_nullable
              as Hotels?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckAvailabilityBody implements _CheckAvailabilityBody {
  _$_CheckAvailabilityBody(
      {this.stay,
      final List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') this.availabilityBodyHotels})
      : _occupancies = occupancies;

  factory _$_CheckAvailabilityBody.fromJson(Map<String, dynamic> json) =>
      _$$_CheckAvailabilityBodyFromJson(json);

  @override
  final Stay? stay;
  final List<Occupancy>? _occupancies;
  @override
  List<Occupancy>? get occupancies {
    final value = _occupancies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'hotels')
  final Hotels? availabilityBodyHotels;

  @override
  String toString() {
    return 'CheckAvailabilityBody(stay: $stay, occupancies: $occupancies, availabilityBodyHotels: $availabilityBodyHotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckAvailabilityBody &&
            const DeepCollectionEquality().equals(other.stay, stay) &&
            const DeepCollectionEquality()
                .equals(other._occupancies, _occupancies) &&
            const DeepCollectionEquality()
                .equals(other.availabilityBodyHotels, availabilityBodyHotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stay),
      const DeepCollectionEquality().hash(_occupancies),
      const DeepCollectionEquality().hash(availabilityBodyHotels));

  @JsonKey(ignore: true)
  @override
  _$$_CheckAvailabilityBodyCopyWith<_$_CheckAvailabilityBody> get copyWith =>
      __$$_CheckAvailabilityBodyCopyWithImpl<_$_CheckAvailabilityBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckAvailabilityBodyToJson(
      this,
    );
  }
}

abstract class _CheckAvailabilityBody implements CheckAvailabilityBody {
  factory _CheckAvailabilityBody(
          {final Stay? stay,
          final List<Occupancy>? occupancies,
          @JsonKey(name: 'hotels') final Hotels? availabilityBodyHotels}) =
      _$_CheckAvailabilityBody;

  factory _CheckAvailabilityBody.fromJson(Map<String, dynamic> json) =
      _$_CheckAvailabilityBody.fromJson;

  @override
  Stay? get stay;
  @override
  List<Occupancy>? get occupancies;
  @override
  @JsonKey(name: 'hotels')
  Hotels? get availabilityBodyHotels;
  @override
  @JsonKey(ignore: true)
  _$$_CheckAvailabilityBodyCopyWith<_$_CheckAvailabilityBody> get copyWith =>
      throw _privateConstructorUsedError;
}
