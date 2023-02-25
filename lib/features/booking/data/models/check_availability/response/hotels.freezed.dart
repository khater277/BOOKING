// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableHotels _$AvailableHotelsFromJson(Map<String, dynamic> json) {
  return _AvailableHotels.fromJson(json);
}

/// @nodoc
mixin _$AvailableHotels {
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  String? get checkIn => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get total => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableHotelsCopyWith<AvailableHotels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableHotelsCopyWith<$Res> {
  factory $AvailableHotelsCopyWith(
          AvailableHotels value, $Res Function(AvailableHotels) then) =
      _$AvailableHotelsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
          List<AvailableHotel>? availableHotels,
      @HiveField(1)
          String? checkIn,
      @HiveField(2)
          int? total,
      @HiveField(3)
          String? checkOut});
}

/// @nodoc
class _$AvailableHotelsCopyWithImpl<$Res>
    implements $AvailableHotelsCopyWith<$Res> {
  _$AvailableHotelsCopyWithImpl(this._value, this._then);

  final AvailableHotels _value;
  // ignore: unused_field
  final $Res Function(AvailableHotels) _then;

  @override
  $Res call({
    Object? availableHotels = freezed,
    Object? checkIn = freezed,
    Object? total = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      availableHotels: availableHotels == freezed
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as List<AvailableHotel>?,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailableHotelsCopyWith<$Res>
    implements $AvailableHotelsCopyWith<$Res> {
  factory _$$_AvailableHotelsCopyWith(
          _$_AvailableHotels value, $Res Function(_$_AvailableHotels) then) =
      __$$_AvailableHotelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
          List<AvailableHotel>? availableHotels,
      @HiveField(1)
          String? checkIn,
      @HiveField(2)
          int? total,
      @HiveField(3)
          String? checkOut});
}

/// @nodoc
class __$$_AvailableHotelsCopyWithImpl<$Res>
    extends _$AvailableHotelsCopyWithImpl<$Res>
    implements _$$_AvailableHotelsCopyWith<$Res> {
  __$$_AvailableHotelsCopyWithImpl(
      _$_AvailableHotels _value, $Res Function(_$_AvailableHotels) _then)
      : super(_value, (v) => _then(v as _$_AvailableHotels));

  @override
  _$_AvailableHotels get _value => super._value as _$_AvailableHotels;

  @override
  $Res call({
    Object? availableHotels = freezed,
    Object? checkIn = freezed,
    Object? total = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$_AvailableHotels(
      availableHotels: availableHotels == freezed
          ? _value._availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as List<AvailableHotel>?,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableHotels implements _AvailableHotels {
  _$_AvailableHotels(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
          final List<AvailableHotel>? availableHotels,
      @HiveField(1)
          this.checkIn,
      @HiveField(2)
          this.total,
      @HiveField(3)
          this.checkOut})
      : _availableHotels = availableHotels;

  factory _$_AvailableHotels.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableHotelsFromJson(json);

  final List<AvailableHotel>? _availableHotels;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels {
    final value = _availableHotels;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(1)
  final String? checkIn;
  @override
  @HiveField(2)
  final int? total;
  @override
  @HiveField(3)
  final String? checkOut;

  @override
  String toString() {
    return 'AvailableHotels(availableHotels: $availableHotels, checkIn: $checkIn, total: $total, checkOut: $checkOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableHotels &&
            const DeepCollectionEquality()
                .equals(other._availableHotels, _availableHotels) &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableHotels),
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(checkOut));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableHotelsCopyWith<_$_AvailableHotels> get copyWith =>
      __$$_AvailableHotelsCopyWithImpl<_$_AvailableHotels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableHotelsToJson(
      this,
    );
  }
}

abstract class _AvailableHotels implements AvailableHotels {
  factory _AvailableHotels(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
          final List<AvailableHotel>? availableHotels,
      @HiveField(1)
          final String? checkIn,
      @HiveField(2)
          final int? total,
      @HiveField(3)
          final String? checkOut}) = _$_AvailableHotels;

  factory _AvailableHotels.fromJson(Map<String, dynamic> json) =
      _$_AvailableHotels.fromJson;

  @override
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels;
  @override
  @HiveField(1)
  String? get checkIn;
  @override
  @HiveField(2)
  int? get total;
  @override
  @HiveField(3)
  String? get checkOut;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableHotelsCopyWith<_$_AvailableHotels> get copyWith =>
      throw _privateConstructorUsedError;
}
