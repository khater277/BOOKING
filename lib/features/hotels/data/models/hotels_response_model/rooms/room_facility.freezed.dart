// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomFacility _$RoomFacilityFromJson(Map<String, dynamic> json) {
  return _RoomFacility.fromJson(json);
}

/// @nodoc
mixin _$RoomFacility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  bool? get indLogic => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get voucher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomFacilityCopyWith<RoomFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomFacilityCopyWith<$Res> {
  factory $RoomFacilityCopyWith(
          RoomFacility value, $Res Function(RoomFacility) then) =
      _$RoomFacilityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) bool? indLogic,
      @HiveField(3) bool? voucher});
}

/// @nodoc
class _$RoomFacilityCopyWithImpl<$Res> implements $RoomFacilityCopyWith<$Res> {
  _$RoomFacilityCopyWithImpl(this._value, this._then);

  final RoomFacility _value;
  // ignore: unused_field
  final $Res Function(RoomFacility) _then;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? indLogic = freezed,
    Object? voucher = freezed,
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
      indLogic: indLogic == freezed
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomFacilityCopyWith<$Res>
    implements $RoomFacilityCopyWith<$Res> {
  factory _$$_RoomFacilityCopyWith(
          _$_RoomFacility value, $Res Function(_$_RoomFacility) then) =
      __$$_RoomFacilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) bool? indLogic,
      @HiveField(3) bool? voucher});
}

/// @nodoc
class __$$_RoomFacilityCopyWithImpl<$Res>
    extends _$RoomFacilityCopyWithImpl<$Res>
    implements _$$_RoomFacilityCopyWith<$Res> {
  __$$_RoomFacilityCopyWithImpl(
      _$_RoomFacility _value, $Res Function(_$_RoomFacility) _then)
      : super(_value, (v) => _then(v as _$_RoomFacility));

  @override
  _$_RoomFacility get _value => super._value as _$_RoomFacility;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? indLogic = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_$_RoomFacility(
      facilityCode: facilityCode == freezed
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      indLogic: indLogic == freezed
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomFacility implements _RoomFacility {
  _$_RoomFacility(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.indLogic,
      @HiveField(3) this.voucher});

  factory _$_RoomFacility.fromJson(Map<String, dynamic> json) =>
      _$$_RoomFacilityFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final bool? indLogic;
  @override
  @HiveField(3)
  final bool? voucher;

  @override
  String toString() {
    return 'RoomFacility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, indLogic: $indLogic, voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomFacility &&
            const DeepCollectionEquality()
                .equals(other.facilityCode, facilityCode) &&
            const DeepCollectionEquality()
                .equals(other.facilityGroupCode, facilityGroupCode) &&
            const DeepCollectionEquality().equals(other.indLogic, indLogic) &&
            const DeepCollectionEquality().equals(other.voucher, voucher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facilityCode),
      const DeepCollectionEquality().hash(facilityGroupCode),
      const DeepCollectionEquality().hash(indLogic),
      const DeepCollectionEquality().hash(voucher));

  @JsonKey(ignore: true)
  @override
  _$$_RoomFacilityCopyWith<_$_RoomFacility> get copyWith =>
      __$$_RoomFacilityCopyWithImpl<_$_RoomFacility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomFacilityToJson(
      this,
    );
  }
}

abstract class _RoomFacility implements RoomFacility {
  factory _RoomFacility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final bool? indLogic,
      @HiveField(3) final bool? voucher}) = _$_RoomFacility;

  factory _RoomFacility.fromJson(Map<String, dynamic> json) =
      _$_RoomFacility.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  bool? get indLogic;
  @override
  @HiveField(3)
  bool? get voucher;
  @override
  @JsonKey(ignore: true)
  _$$_RoomFacilityCopyWith<_$_RoomFacility> get copyWith =>
      throw _privateConstructorUsedError;
}
