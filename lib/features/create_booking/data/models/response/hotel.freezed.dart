// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableHotel _$AvailableHotelFromJson(Map<String, dynamic> json) {
  return _AvailableHotel.fromJson(json);
}

/// @nodoc
mixin _$AvailableHotel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get categoryCode => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get categoryName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get destinationCode => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get destinationName => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get zoneCode => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get zoneName => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get latitude => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get minRate => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get maxRate => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableHotelCopyWith<AvailableHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableHotelCopyWith<$Res> {
  factory $AvailableHotelCopyWith(
          AvailableHotel value, $Res Function(AvailableHotel) then) =
      _$AvailableHotelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
          int? code,
      @HiveField(1)
          String? name,
      @HiveField(2)
          String? categoryCode,
      @HiveField(3)
          String? categoryName,
      @HiveField(4)
          String? destinationCode,
      @HiveField(5)
          String? destinationName,
      @HiveField(6)
          int? zoneCode,
      @HiveField(7)
          String? zoneName,
      @HiveField(8)
          String? latitude,
      @HiveField(9)
          String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
          List<AvailableRoom>? availableRooms,
      @HiveField(11)
          String? minRate,
      @HiveField(12)
          String? maxRate,
      @HiveField(13)
          String? currency});
}

/// @nodoc
class _$AvailableHotelCopyWithImpl<$Res>
    implements $AvailableHotelCopyWith<$Res> {
  _$AvailableHotelCopyWithImpl(this._value, this._then);

  final AvailableHotel _value;
  // ignore: unused_field
  final $Res Function(AvailableHotel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? destinationCode = freezed,
    Object? destinationName = freezed,
    Object? zoneCode = freezed,
    Object? zoneName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? availableRooms = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: destinationCode == freezed
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: destinationName == freezed
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneCode: zoneCode == freezed
          ? _value.zoneCode
          : zoneCode // ignore: cast_nullable_to_non_nullable
              as int?,
      zoneName: zoneName == freezed
          ? _value.zoneName
          : zoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      availableRooms: availableRooms == freezed
          ? _value.availableRooms
          : availableRooms // ignore: cast_nullable_to_non_nullable
              as List<AvailableRoom>?,
      minRate: minRate == freezed
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRate: maxRate == freezed
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailableHotelCopyWith<$Res>
    implements $AvailableHotelCopyWith<$Res> {
  factory _$$_AvailableHotelCopyWith(
          _$_AvailableHotel value, $Res Function(_$_AvailableHotel) then) =
      __$$_AvailableHotelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
          int? code,
      @HiveField(1)
          String? name,
      @HiveField(2)
          String? categoryCode,
      @HiveField(3)
          String? categoryName,
      @HiveField(4)
          String? destinationCode,
      @HiveField(5)
          String? destinationName,
      @HiveField(6)
          int? zoneCode,
      @HiveField(7)
          String? zoneName,
      @HiveField(8)
          String? latitude,
      @HiveField(9)
          String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
          List<AvailableRoom>? availableRooms,
      @HiveField(11)
          String? minRate,
      @HiveField(12)
          String? maxRate,
      @HiveField(13)
          String? currency});
}

/// @nodoc
class __$$_AvailableHotelCopyWithImpl<$Res>
    extends _$AvailableHotelCopyWithImpl<$Res>
    implements _$$_AvailableHotelCopyWith<$Res> {
  __$$_AvailableHotelCopyWithImpl(
      _$_AvailableHotel _value, $Res Function(_$_AvailableHotel) _then)
      : super(_value, (v) => _then(v as _$_AvailableHotel));

  @override
  _$_AvailableHotel get _value => super._value as _$_AvailableHotel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? destinationCode = freezed,
    Object? destinationName = freezed,
    Object? zoneCode = freezed,
    Object? zoneName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? availableRooms = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$_AvailableHotel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: destinationCode == freezed
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: destinationName == freezed
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneCode: zoneCode == freezed
          ? _value.zoneCode
          : zoneCode // ignore: cast_nullable_to_non_nullable
              as int?,
      zoneName: zoneName == freezed
          ? _value.zoneName
          : zoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      availableRooms: availableRooms == freezed
          ? _value._availableRooms
          : availableRooms // ignore: cast_nullable_to_non_nullable
              as List<AvailableRoom>?,
      minRate: minRate == freezed
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRate: maxRate == freezed
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableHotel implements _AvailableHotel {
  _$_AvailableHotel(
      {@HiveField(0)
          this.code,
      @HiveField(1)
          this.name,
      @HiveField(2)
          this.categoryCode,
      @HiveField(3)
          this.categoryName,
      @HiveField(4)
          this.destinationCode,
      @HiveField(5)
          this.destinationName,
      @HiveField(6)
          this.zoneCode,
      @HiveField(7)
          this.zoneName,
      @HiveField(8)
          this.latitude,
      @HiveField(9)
          this.longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
          final List<AvailableRoom>? availableRooms,
      @HiveField(11)
          this.minRate,
      @HiveField(12)
          this.maxRate,
      @HiveField(13)
          this.currency})
      : _availableRooms = availableRooms;

  factory _$_AvailableHotel.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableHotelFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? categoryCode;
  @override
  @HiveField(3)
  final String? categoryName;
  @override
  @HiveField(4)
  final String? destinationCode;
  @override
  @HiveField(5)
  final String? destinationName;
  @override
  @HiveField(6)
  final int? zoneCode;
  @override
  @HiveField(7)
  final String? zoneName;
  @override
  @HiveField(8)
  final String? latitude;
  @override
  @HiveField(9)
  final String? longitude;
  final List<AvailableRoom>? _availableRooms;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms {
    final value = _availableRooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final String? minRate;
  @override
  @HiveField(12)
  final String? maxRate;
  @override
  @HiveField(13)
  final String? currency;

  @override
  String toString() {
    return 'AvailableHotel(code: $code, name: $name, categoryCode: $categoryCode, categoryName: $categoryName, destinationCode: $destinationCode, destinationName: $destinationName, zoneCode: $zoneCode, zoneName: $zoneName, latitude: $latitude, longitude: $longitude, availableRooms: $availableRooms, minRate: $minRate, maxRate: $maxRate, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableHotel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality()
                .equals(other.destinationCode, destinationCode) &&
            const DeepCollectionEquality()
                .equals(other.destinationName, destinationName) &&
            const DeepCollectionEquality().equals(other.zoneCode, zoneCode) &&
            const DeepCollectionEquality().equals(other.zoneName, zoneName) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other._availableRooms, _availableRooms) &&
            const DeepCollectionEquality().equals(other.minRate, minRate) &&
            const DeepCollectionEquality().equals(other.maxRate, maxRate) &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(destinationCode),
      const DeepCollectionEquality().hash(destinationName),
      const DeepCollectionEquality().hash(zoneCode),
      const DeepCollectionEquality().hash(zoneName),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(_availableRooms),
      const DeepCollectionEquality().hash(minRate),
      const DeepCollectionEquality().hash(maxRate),
      const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableHotelCopyWith<_$_AvailableHotel> get copyWith =>
      __$$_AvailableHotelCopyWithImpl<_$_AvailableHotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableHotelToJson(
      this,
    );
  }
}

abstract class _AvailableHotel implements AvailableHotel {
  factory _AvailableHotel(
      {@HiveField(0)
          final int? code,
      @HiveField(1)
          final String? name,
      @HiveField(2)
          final String? categoryCode,
      @HiveField(3)
          final String? categoryName,
      @HiveField(4)
          final String? destinationCode,
      @HiveField(5)
          final String? destinationName,
      @HiveField(6)
          final int? zoneCode,
      @HiveField(7)
          final String? zoneName,
      @HiveField(8)
          final String? latitude,
      @HiveField(9)
          final String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
          final List<AvailableRoom>? availableRooms,
      @HiveField(11)
          final String? minRate,
      @HiveField(12)
          final String? maxRate,
      @HiveField(13)
          final String? currency}) = _$_AvailableHotel;

  factory _AvailableHotel.fromJson(Map<String, dynamic> json) =
      _$_AvailableHotel.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get categoryCode;
  @override
  @HiveField(3)
  String? get categoryName;
  @override
  @HiveField(4)
  String? get destinationCode;
  @override
  @HiveField(5)
  String? get destinationName;
  @override
  @HiveField(6)
  int? get zoneCode;
  @override
  @HiveField(7)
  String? get zoneName;
  @override
  @HiveField(8)
  String? get latitude;
  @override
  @HiveField(9)
  String? get longitude;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms;
  @override
  @HiveField(11)
  String? get minRate;
  @override
  @HiveField(12)
  String? get maxRate;
  @override
  @HiveField(13)
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableHotelCopyWith<_$_AvailableHotel> get copyWith =>
      throw _privateConstructorUsedError;
}
