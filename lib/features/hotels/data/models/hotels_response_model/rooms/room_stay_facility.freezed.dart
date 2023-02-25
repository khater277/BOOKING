// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_stay_facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomStayFacility _$RoomStayFacilityFromJson(Map<String, dynamic> json) {
  return _RoomStayFacility.fromJson(json);
}

/// @nodoc
mixin _$RoomStayFacility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomStayFacilityCopyWith<RoomStayFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStayFacilityCopyWith<$Res> {
  factory $RoomStayFacilityCopyWith(
          RoomStayFacility value, $Res Function(RoomStayFacility) then) =
      _$RoomStayFacilityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? number});
}

/// @nodoc
class _$RoomStayFacilityCopyWithImpl<$Res>
    implements $RoomStayFacilityCopyWith<$Res> {
  _$RoomStayFacilityCopyWithImpl(this._value, this._then);

  final RoomStayFacility _value;
  // ignore: unused_field
  final $Res Function(RoomStayFacility) _then;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      facilityCode: facilityCode == freezed
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomStayFacilityCopyWith<$Res>
    implements $RoomStayFacilityCopyWith<$Res> {
  factory _$$_RoomStayFacilityCopyWith(
          _$_RoomStayFacility value, $Res Function(_$_RoomStayFacility) then) =
      __$$_RoomStayFacilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? number});
}

/// @nodoc
class __$$_RoomStayFacilityCopyWithImpl<$Res>
    extends _$RoomStayFacilityCopyWithImpl<$Res>
    implements _$$_RoomStayFacilityCopyWith<$Res> {
  __$$_RoomStayFacilityCopyWithImpl(
      _$_RoomStayFacility _value, $Res Function(_$_RoomStayFacility) _then)
      : super(_value, (v) => _then(v as _$_RoomStayFacility));

  @override
  _$_RoomStayFacility get _value => super._value as _$_RoomStayFacility;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_RoomStayFacility(
      facilityCode: facilityCode == freezed
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomStayFacility implements _RoomStayFacility {
  _$_RoomStayFacility(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.number});

  factory _$_RoomStayFacility.fromJson(Map<String, dynamic> json) =>
      _$$_RoomStayFacilityFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? number;

  @override
  String toString() {
    return 'RoomStayFacility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomStayFacility &&
            const DeepCollectionEquality()
                .equals(other.facilityCode, facilityCode) &&
            const DeepCollectionEquality()
                .equals(other.facilityGroupCode, facilityGroupCode) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facilityCode),
      const DeepCollectionEquality().hash(facilityGroupCode),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_RoomStayFacilityCopyWith<_$_RoomStayFacility> get copyWith =>
      __$$_RoomStayFacilityCopyWithImpl<_$_RoomStayFacility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomStayFacilityToJson(
      this,
    );
  }
}

abstract class _RoomStayFacility implements RoomStayFacility {
  factory _RoomStayFacility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? number}) = _$_RoomStayFacility;

  factory _RoomStayFacility.fromJson(Map<String, dynamic> json) =
      _$_RoomStayFacility.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$_RoomStayFacilityCopyWith<_$_RoomStayFacility> get copyWith =>
      throw _privateConstructorUsedError;
}
