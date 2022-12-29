// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return _Facility.fromJson(json);
}

/// @nodoc
mixin _$Facility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get order => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get indYesOrNo => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get number => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get voucher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityCopyWith<Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) then) =
      _$FacilityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? order,
      @HiveField(3) bool? indYesOrNo,
      @HiveField(4) int? number,
      @HiveField(5) bool? voucher});
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res> implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._value, this._then);

  final Facility _value;
  // ignore: unused_field
  final $Res Function(Facility) _then;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? order = freezed,
    Object? indYesOrNo = freezed,
    Object? number = freezed,
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
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indYesOrNo: indYesOrNo == freezed
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_FacilityCopyWith<$Res> implements $FacilityCopyWith<$Res> {
  factory _$$_FacilityCopyWith(
          _$_Facility value, $Res Function(_$_Facility) then) =
      __$$_FacilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? order,
      @HiveField(3) bool? indYesOrNo,
      @HiveField(4) int? number,
      @HiveField(5) bool? voucher});
}

/// @nodoc
class __$$_FacilityCopyWithImpl<$Res> extends _$FacilityCopyWithImpl<$Res>
    implements _$$_FacilityCopyWith<$Res> {
  __$$_FacilityCopyWithImpl(
      _$_Facility _value, $Res Function(_$_Facility) _then)
      : super(_value, (v) => _then(v as _$_Facility));

  @override
  _$_Facility get _value => super._value as _$_Facility;

  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? order = freezed,
    Object? indYesOrNo = freezed,
    Object? number = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_$_Facility(
      facilityCode: facilityCode == freezed
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: facilityGroupCode == freezed
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indYesOrNo: indYesOrNo == freezed
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Facility implements _Facility {
  _$_Facility(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.order,
      @HiveField(3) this.indYesOrNo,
      @HiveField(4) this.number,
      @HiveField(5) this.voucher});

  factory _$_Facility.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? order;
  @override
  @HiveField(3)
  final bool? indYesOrNo;
  @override
  @HiveField(4)
  final int? number;
  @override
  @HiveField(5)
  final bool? voucher;

  @override
  String toString() {
    return 'Facility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, order: $order, indYesOrNo: $indYesOrNo, number: $number, voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Facility &&
            const DeepCollectionEquality()
                .equals(other.facilityCode, facilityCode) &&
            const DeepCollectionEquality()
                .equals(other.facilityGroupCode, facilityGroupCode) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.indYesOrNo, indYesOrNo) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.voucher, voucher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facilityCode),
      const DeepCollectionEquality().hash(facilityGroupCode),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(indYesOrNo),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(voucher));

  @JsonKey(ignore: true)
  @override
  _$$_FacilityCopyWith<_$_Facility> get copyWith =>
      __$$_FacilityCopyWithImpl<_$_Facility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityToJson(
      this,
    );
  }
}

abstract class _Facility implements Facility {
  factory _Facility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? order,
      @HiveField(3) final bool? indYesOrNo,
      @HiveField(4) final int? number,
      @HiveField(5) final bool? voucher}) = _$_Facility;

  factory _Facility.fromJson(Map<String, dynamic> json) = _$_Facility.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get order;
  @override
  @HiveField(3)
  bool? get indYesOrNo;
  @override
  @HiveField(4)
  int? get number;
  @override
  @HiveField(5)
  bool? get voucher;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityCopyWith<_$_Facility> get copyWith =>
      throw _privateConstructorUsedError;
}
