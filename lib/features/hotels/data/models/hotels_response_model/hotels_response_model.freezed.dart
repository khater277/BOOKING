// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotels_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelsResponseModel _$HotelsResponseModelFromJson(Map<String, dynamic> json) {
  return _HotelsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsResponseModel {
  @HiveField(0)
  int? get from => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get to => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get total => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Hotel>? get hotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsResponseModelCopyWith<HotelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsResponseModelCopyWith<$Res> {
  factory $HotelsResponseModelCopyWith(
          HotelsResponseModel value, $Res Function(HotelsResponseModel) then) =
      _$HotelsResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      @HiveField(3) List<Hotel>? hotels});
}

/// @nodoc
class _$HotelsResponseModelCopyWithImpl<$Res>
    implements $HotelsResponseModelCopyWith<$Res> {
  _$HotelsResponseModelCopyWithImpl(this._value, this._then);

  final HotelsResponseModel _value;
  // ignore: unused_field
  final $Res Function(HotelsResponseModel) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: hotels == freezed
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HotelsResponseModelCopyWith<$Res>
    implements $HotelsResponseModelCopyWith<$Res> {
  factory _$$_HotelsResponseModelCopyWith(_$_HotelsResponseModel value,
          $Res Function(_$_HotelsResponseModel) then) =
      __$$_HotelsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      @HiveField(3) List<Hotel>? hotels});
}

/// @nodoc
class __$$_HotelsResponseModelCopyWithImpl<$Res>
    extends _$HotelsResponseModelCopyWithImpl<$Res>
    implements _$$_HotelsResponseModelCopyWith<$Res> {
  __$$_HotelsResponseModelCopyWithImpl(_$_HotelsResponseModel _value,
      $Res Function(_$_HotelsResponseModel) _then)
      : super(_value, (v) => _then(v as _$_HotelsResponseModel));

  @override
  _$_HotelsResponseModel get _value => super._value as _$_HotelsResponseModel;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
  }) {
    return _then(_$_HotelsResponseModel(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: hotels == freezed
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelsResponseModel implements _HotelsResponseModel {
  const _$_HotelsResponseModel(
      {@HiveField(0) this.from,
      @HiveField(1) this.to,
      @HiveField(2) this.total,
      @HiveField(3) final List<Hotel>? hotels})
      : _hotels = hotels;

  factory _$_HotelsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelsResponseModelFromJson(json);

  @override
  @HiveField(0)
  final int? from;
  @override
  @HiveField(1)
  final int? to;
  @override
  @HiveField(2)
  final int? total;
  final List<Hotel>? _hotels;
  @override
  @HiveField(3)
  List<Hotel>? get hotels {
    final value = _hotels;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HotelsResponseModel(from: $from, to: $to, total: $total, hotels: $hotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelsResponseModel &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  _$$_HotelsResponseModelCopyWith<_$_HotelsResponseModel> get copyWith =>
      __$$_HotelsResponseModelCopyWithImpl<_$_HotelsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelsResponseModelToJson(
      this,
    );
  }
}

abstract class _HotelsResponseModel implements HotelsResponseModel {
  const factory _HotelsResponseModel(
      {@HiveField(0) final int? from,
      @HiveField(1) final int? to,
      @HiveField(2) final int? total,
      @HiveField(3) final List<Hotel>? hotels}) = _$_HotelsResponseModel;

  factory _HotelsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_HotelsResponseModel.fromJson;

  @override
  @HiveField(0)
  int? get from;
  @override
  @HiveField(1)
  int? get to;
  @override
  @HiveField(2)
  int? get total;
  @override
  @HiveField(3)
  List<Hotel>? get hotels;
  @override
  @JsonKey(ignore: true)
  _$$_HotelsResponseModelCopyWith<_$_HotelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  City? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  City? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get countryCode => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get stateCode => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get destinationCode => throw _privateConstructorUsedError;
  @HiveField(6)
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get categoryCode => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get categoryGroupCode => throw _privateConstructorUsedError;
  @HiveField(9)
  Address? get address => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get postalCode => throw _privateConstructorUsedError;
  @HiveField(11)
  City? get city => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get license => throw _privateConstructorUsedError;
  @HiveField(14)
  List<Phone>? get phones => throw _privateConstructorUsedError;
  @HiveField(15)
  List<Room>? get rooms => throw _privateConstructorUsedError;
  @HiveField(16)
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @HiveField(17)
  List<Image>? get images => throw _privateConstructorUsedError;
  @HiveField(18)
  String? get web => throw _privateConstructorUsedError;
  @HiveField(19)
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  @HiveField(20)
  String? get s2C => throw _privateConstructorUsedError;
  @HiveField(21)
  int? get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) City? name,
      @HiveField(2) City? description,
      @HiveField(3) String? countryCode,
      @HiveField(4) String? stateCode,
      @HiveField(5) String? destinationCode,
      @HiveField(6) Coordinates? coordinates,
      @HiveField(7) String? categoryCode,
      @HiveField(8) String? categoryGroupCode,
      @HiveField(9) Address? address,
      @HiveField(10) String? postalCode,
      @HiveField(11) City? city,
      @HiveField(12) String? email,
      @HiveField(13) String? license,
      @HiveField(14) List<Phone>? phones,
      @HiveField(15) List<Room>? rooms,
      @HiveField(16) List<Facility>? facilities,
      @HiveField(17) List<Image>? images,
      @HiveField(18) String? web,
      @HiveField(19) DateTime? lastUpdate,
      @HiveField(20) String? s2C,
      @HiveField(21) int? ranking});

  $CityCopyWith<$Res>? get name;
  $CityCopyWith<$Res>? get description;
  $CoordinatesCopyWith<$Res>? get coordinates;
  $AddressCopyWith<$Res>? get address;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res> implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  final Hotel _value;
  // ignore: unused_field
  final $Res Function(Hotel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? countryCode = freezed,
    Object? stateCode = freezed,
    Object? destinationCode = freezed,
    Object? coordinates = freezed,
    Object? categoryCode = freezed,
    Object? categoryGroupCode = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? license = freezed,
    Object? phones = freezed,
    Object? rooms = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
    Object? web = freezed,
    Object? lastUpdate = freezed,
    Object? s2C = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as City?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as City?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: stateCode == freezed
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: destinationCode == freezed
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryGroupCode: categoryGroupCode == freezed
          ? _value.categoryGroupCode
          : categoryGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      facilities: facilities == freezed
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      web: web == freezed
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      s2C: s2C == freezed
          ? _value.s2C
          : s2C // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: ranking == freezed
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $CityCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $CityCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value));
    });
  }

  @override
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$_HotelCopyWith(_$_Hotel value, $Res Function(_$_Hotel) then) =
      __$$_HotelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) City? name,
      @HiveField(2) City? description,
      @HiveField(3) String? countryCode,
      @HiveField(4) String? stateCode,
      @HiveField(5) String? destinationCode,
      @HiveField(6) Coordinates? coordinates,
      @HiveField(7) String? categoryCode,
      @HiveField(8) String? categoryGroupCode,
      @HiveField(9) Address? address,
      @HiveField(10) String? postalCode,
      @HiveField(11) City? city,
      @HiveField(12) String? email,
      @HiveField(13) String? license,
      @HiveField(14) List<Phone>? phones,
      @HiveField(15) List<Room>? rooms,
      @HiveField(16) List<Facility>? facilities,
      @HiveField(17) List<Image>? images,
      @HiveField(18) String? web,
      @HiveField(19) DateTime? lastUpdate,
      @HiveField(20) String? s2C,
      @HiveField(21) int? ranking});

  @override
  $CityCopyWith<$Res>? get name;
  @override
  $CityCopyWith<$Res>? get description;
  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res>
    implements _$$_HotelCopyWith<$Res> {
  __$$_HotelCopyWithImpl(_$_Hotel _value, $Res Function(_$_Hotel) _then)
      : super(_value, (v) => _then(v as _$_Hotel));

  @override
  _$_Hotel get _value => super._value as _$_Hotel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? countryCode = freezed,
    Object? stateCode = freezed,
    Object? destinationCode = freezed,
    Object? coordinates = freezed,
    Object? categoryCode = freezed,
    Object? categoryGroupCode = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? license = freezed,
    Object? phones = freezed,
    Object? rooms = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
    Object? web = freezed,
    Object? lastUpdate = freezed,
    Object? s2C = freezed,
    Object? ranking = freezed,
  }) {
    return _then(_$_Hotel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as City?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as City?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: stateCode == freezed
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: destinationCode == freezed
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryGroupCode: categoryGroupCode == freezed
          ? _value.categoryGroupCode
          : categoryGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      license: license == freezed
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: phones == freezed
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      rooms: rooms == freezed
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      facilities: facilities == freezed
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      web: web == freezed
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      s2C: s2C == freezed
          ? _value.s2C
          : s2C // ignore: cast_nullable_to_non_nullable
              as String?,
      ranking: ranking == freezed
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hotel implements _Hotel {
  const _$_Hotel(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) this.description,
      @HiveField(3) this.countryCode,
      @HiveField(4) this.stateCode,
      @HiveField(5) this.destinationCode,
      @HiveField(6) this.coordinates,
      @HiveField(7) this.categoryCode,
      @HiveField(8) this.categoryGroupCode,
      @HiveField(9) this.address,
      @HiveField(10) this.postalCode,
      @HiveField(11) this.city,
      @HiveField(12) this.email,
      @HiveField(13) this.license,
      @HiveField(14) final List<Phone>? phones,
      @HiveField(15) final List<Room>? rooms,
      @HiveField(16) final List<Facility>? facilities,
      @HiveField(17) final List<Image>? images,
      @HiveField(18) this.web,
      @HiveField(19) this.lastUpdate,
      @HiveField(20) this.s2C,
      @HiveField(21) this.ranking})
      : _phones = phones,
        _rooms = rooms,
        _facilities = facilities,
        _images = images;

  factory _$_Hotel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final City? name;
  @override
  @HiveField(2)
  final City? description;
  @override
  @HiveField(3)
  final String? countryCode;
  @override
  @HiveField(4)
  final String? stateCode;
  @override
  @HiveField(5)
  final String? destinationCode;
  @override
  @HiveField(6)
  final Coordinates? coordinates;
  @override
  @HiveField(7)
  final String? categoryCode;
  @override
  @HiveField(8)
  final String? categoryGroupCode;
  @override
  @HiveField(9)
  final Address? address;
  @override
  @HiveField(10)
  final String? postalCode;
  @override
  @HiveField(11)
  final City? city;
  @override
  @HiveField(12)
  final String? email;
  @override
  @HiveField(13)
  final String? license;
  final List<Phone>? _phones;
  @override
  @HiveField(14)
  List<Phone>? get phones {
    final value = _phones;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Room>? _rooms;
  @override
  @HiveField(15)
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Facility>? _facilities;
  @override
  @HiveField(16)
  List<Facility>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  @HiveField(17)
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(18)
  final String? web;
  @override
  @HiveField(19)
  final DateTime? lastUpdate;
  @override
  @HiveField(20)
  final String? s2C;
  @override
  @HiveField(21)
  final int? ranking;

  @override
  String toString() {
    return 'Hotel(code: $code, name: $name, description: $description, countryCode: $countryCode, stateCode: $stateCode, destinationCode: $destinationCode, coordinates: $coordinates, categoryCode: $categoryCode, categoryGroupCode: $categoryGroupCode, address: $address, postalCode: $postalCode, city: $city, email: $email, license: $license, phones: $phones, rooms: $rooms, facilities: $facilities, images: $images, web: $web, lastUpdate: $lastUpdate, s2C: $s2C, ranking: $ranking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality().equals(other.stateCode, stateCode) &&
            const DeepCollectionEquality()
                .equals(other.destinationCode, destinationCode) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates) &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryGroupCode, categoryGroupCode) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.license, license) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.web, web) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdate, lastUpdate) &&
            const DeepCollectionEquality().equals(other.s2C, s2C) &&
            const DeepCollectionEquality().equals(other.ranking, ranking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(countryCode),
        const DeepCollectionEquality().hash(stateCode),
        const DeepCollectionEquality().hash(destinationCode),
        const DeepCollectionEquality().hash(coordinates),
        const DeepCollectionEquality().hash(categoryCode),
        const DeepCollectionEquality().hash(categoryGroupCode),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(postalCode),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(license),
        const DeepCollectionEquality().hash(_phones),
        const DeepCollectionEquality().hash(_rooms),
        const DeepCollectionEquality().hash(_facilities),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(web),
        const DeepCollectionEquality().hash(lastUpdate),
        const DeepCollectionEquality().hash(s2C),
        const DeepCollectionEquality().hash(ranking)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      __$$_HotelCopyWithImpl<_$_Hotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelToJson(
      this,
    );
  }
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
      {@HiveField(0) final int? code,
      @HiveField(1) final City? name,
      @HiveField(2) final City? description,
      @HiveField(3) final String? countryCode,
      @HiveField(4) final String? stateCode,
      @HiveField(5) final String? destinationCode,
      @HiveField(6) final Coordinates? coordinates,
      @HiveField(7) final String? categoryCode,
      @HiveField(8) final String? categoryGroupCode,
      @HiveField(9) final Address? address,
      @HiveField(10) final String? postalCode,
      @HiveField(11) final City? city,
      @HiveField(12) final String? email,
      @HiveField(13) final String? license,
      @HiveField(14) final List<Phone>? phones,
      @HiveField(15) final List<Room>? rooms,
      @HiveField(16) final List<Facility>? facilities,
      @HiveField(17) final List<Image>? images,
      @HiveField(18) final String? web,
      @HiveField(19) final DateTime? lastUpdate,
      @HiveField(20) final String? s2C,
      @HiveField(21) final int? ranking}) = _$_Hotel;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$_Hotel.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  City? get name;
  @override
  @HiveField(2)
  City? get description;
  @override
  @HiveField(3)
  String? get countryCode;
  @override
  @HiveField(4)
  String? get stateCode;
  @override
  @HiveField(5)
  String? get destinationCode;
  @override
  @HiveField(6)
  Coordinates? get coordinates;
  @override
  @HiveField(7)
  String? get categoryCode;
  @override
  @HiveField(8)
  String? get categoryGroupCode;
  @override
  @HiveField(9)
  Address? get address;
  @override
  @HiveField(10)
  String? get postalCode;
  @override
  @HiveField(11)
  City? get city;
  @override
  @HiveField(12)
  String? get email;
  @override
  @HiveField(13)
  String? get license;
  @override
  @HiveField(14)
  List<Phone>? get phones;
  @override
  @HiveField(15)
  List<Room>? get rooms;
  @override
  @HiveField(16)
  List<Facility>? get facilities;
  @override
  @HiveField(17)
  List<Image>? get images;
  @override
  @HiveField(18)
  String? get web;
  @override
  @HiveField(19)
  DateTime? get lastUpdate;
  @override
  @HiveField(20)
  String? get s2C;
  @override
  @HiveField(21)
  int? get ranking;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @HiveField(0)
  String? get content => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get street => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get number => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get floor => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get door => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? content,
      @HiveField(1) String? street,
      @HiveField(2) String? number,
      @HiveField(3) String? floor,
      @HiveField(4) String? door});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? street = freezed,
    Object? number = freezed,
    Object? floor = freezed,
    Object? door = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      door: door == freezed
          ? _value.door
          : door // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? content,
      @HiveField(1) String? street,
      @HiveField(2) String? number,
      @HiveField(3) String? floor,
      @HiveField(4) String? door});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, (v) => _then(v as _$_Address));

  @override
  _$_Address get _value => super._value as _$_Address;

  @override
  $Res call({
    Object? content = freezed,
    Object? street = freezed,
    Object? number = freezed,
    Object? floor = freezed,
    Object? door = freezed,
  }) {
    return _then(_$_Address(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      door: door == freezed
          ? _value.door
          : door // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {@HiveField(0) this.content,
      @HiveField(1) this.street,
      @HiveField(2) this.number,
      @HiveField(3) this.floor,
      @HiveField(4) this.door});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  @HiveField(0)
  final String? content;
  @override
  @HiveField(1)
  final String? street;
  @override
  @HiveField(2)
  final String? number;
  @override
  @HiveField(3)
  final String? floor;
  @override
  @HiveField(4)
  final String? door;

  @override
  String toString() {
    return 'Address(content: $content, street: $street, number: $number, floor: $floor, door: $door)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.floor, floor) &&
            const DeepCollectionEquality().equals(other.door, door));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(floor),
      const DeepCollectionEquality().hash(door));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@HiveField(0) final String? content,
      @HiveField(1) final String? street,
      @HiveField(2) final String? number,
      @HiveField(3) final String? floor,
      @HiveField(4) final String? door}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  @HiveField(0)
  String? get content;
  @override
  @HiveField(1)
  String? get street;
  @override
  @HiveField(2)
  String? get number;
  @override
  @HiveField(3)
  String? get floor;
  @override
  @HiveField(4)
  String? get door;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  @HiveField(0)
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? content});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? content});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, (v) => _then(v as _$_City));

  @override
  _$_City get _value => super._value as _$_City;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_City(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City implements _City {
  const _$_City({@HiveField(0) this.content});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  @HiveField(0)
  final String? content;

  @override
  String toString() {
    return 'City(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City({@HiveField(0) final String? content}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  @HiveField(0)
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  @HiveField(0)
  double? get longitude => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({@HiveField(0) double? longitude, @HiveField(1) double? latitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$_CoordinatesCopyWith(
          _$_Coordinates value, $Res Function(_$_Coordinates) then) =
      __$$_CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) double? longitude, @HiveField(1) double? latitude});
}

/// @nodoc
class __$$_CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$$_CoordinatesCopyWith<$Res> {
  __$$_CoordinatesCopyWithImpl(
      _$_Coordinates _value, $Res Function(_$_Coordinates) _then)
      : super(_value, (v) => _then(v as _$_Coordinates));

  @override
  _$_Coordinates get _value => super._value as _$_Coordinates;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_Coordinates(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinates implements _Coordinates {
  const _$_Coordinates(
      {@HiveField(0) this.longitude, @HiveField(1) this.latitude});

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinatesFromJson(json);

  @override
  @HiveField(0)
  final double? longitude;
  @override
  @HiveField(1)
  final double? latitude;

  @override
  String toString() {
    return 'Coordinates(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coordinates &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude));

  @JsonKey(ignore: true)
  @override
  _$$_CoordinatesCopyWith<_$_Coordinates> get copyWith =>
      __$$_CoordinatesCopyWithImpl<_$_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {@HiveField(0) final double? longitude,
      @HiveField(1) final double? latitude}) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  @HiveField(0)
  double? get longitude;
  @override
  @HiveField(1)
  double? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinatesCopyWith<_$_Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  @HiveField(6)
  bool? get indLogic => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get indFee => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get distance => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get timeFrom => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get timeTo => throw _privateConstructorUsedError;
  @HiveField(11)
  DateTime? get dateTo => throw _privateConstructorUsedError;
  @HiveField(12)
  double? get amount => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get currency => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get applicationType => throw _privateConstructorUsedError;
  @HiveField(15)
  int? get ageFrom => throw _privateConstructorUsedError;
  @HiveField(16)
  int? get ageTo => throw _privateConstructorUsedError;
  @HiveField(17)
  DateTime? get dateFrom => throw _privateConstructorUsedError;

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
      @HiveField(5) bool? voucher,
      @HiveField(6) bool? indLogic,
      @HiveField(7) bool? indFee,
      @HiveField(8) int? distance,
      @HiveField(9) String? timeFrom,
      @HiveField(10) String? timeTo,
      @HiveField(11) DateTime? dateTo,
      @HiveField(12) double? amount,
      @HiveField(13) String? currency,
      @HiveField(14) String? applicationType,
      @HiveField(15) int? ageFrom,
      @HiveField(16) int? ageTo,
      @HiveField(17) DateTime? dateFrom});
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
    Object? indLogic = freezed,
    Object? indFee = freezed,
    Object? distance = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? dateTo = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? applicationType = freezed,
    Object? ageFrom = freezed,
    Object? ageTo = freezed,
    Object? dateFrom = freezed,
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
      indLogic: indLogic == freezed
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      indFee: indFee == freezed
          ? _value.indFee
          : indFee // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      timeFrom: timeFrom == freezed
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: timeTo == freezed
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationType: applicationType == freezed
          ? _value.applicationType
          : applicationType // ignore: cast_nullable_to_non_nullable
              as String?,
      ageFrom: ageFrom == freezed
          ? _value.ageFrom
          : ageFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      ageTo: ageTo == freezed
          ? _value.ageTo
          : ageTo // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @HiveField(5) bool? voucher,
      @HiveField(6) bool? indLogic,
      @HiveField(7) bool? indFee,
      @HiveField(8) int? distance,
      @HiveField(9) String? timeFrom,
      @HiveField(10) String? timeTo,
      @HiveField(11) DateTime? dateTo,
      @HiveField(12) double? amount,
      @HiveField(13) String? currency,
      @HiveField(14) String? applicationType,
      @HiveField(15) int? ageFrom,
      @HiveField(16) int? ageTo,
      @HiveField(17) DateTime? dateFrom});
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
    Object? indLogic = freezed,
    Object? indFee = freezed,
    Object? distance = freezed,
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? dateTo = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? applicationType = freezed,
    Object? ageFrom = freezed,
    Object? ageTo = freezed,
    Object? dateFrom = freezed,
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
      indLogic: indLogic == freezed
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      indFee: indFee == freezed
          ? _value.indFee
          : indFee // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      timeFrom: timeFrom == freezed
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: timeTo == freezed
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationType: applicationType == freezed
          ? _value.applicationType
          : applicationType // ignore: cast_nullable_to_non_nullable
              as String?,
      ageFrom: ageFrom == freezed
          ? _value.ageFrom
          : ageFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      ageTo: ageTo == freezed
          ? _value.ageTo
          : ageTo // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Facility implements _Facility {
  const _$_Facility(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.order,
      @HiveField(3) this.indYesOrNo,
      @HiveField(4) this.number,
      @HiveField(5) this.voucher,
      @HiveField(6) this.indLogic,
      @HiveField(7) this.indFee,
      @HiveField(8) this.distance,
      @HiveField(9) this.timeFrom,
      @HiveField(10) this.timeTo,
      @HiveField(11) this.dateTo,
      @HiveField(12) this.amount,
      @HiveField(13) this.currency,
      @HiveField(14) this.applicationType,
      @HiveField(15) this.ageFrom,
      @HiveField(16) this.ageTo,
      @HiveField(17) this.dateFrom});

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
  @HiveField(6)
  final bool? indLogic;
  @override
  @HiveField(7)
  final bool? indFee;
  @override
  @HiveField(8)
  final int? distance;
  @override
  @HiveField(9)
  final String? timeFrom;
  @override
  @HiveField(10)
  final String? timeTo;
  @override
  @HiveField(11)
  final DateTime? dateTo;
  @override
  @HiveField(12)
  final double? amount;
  @override
  @HiveField(13)
  final String? currency;
  @override
  @HiveField(14)
  final String? applicationType;
  @override
  @HiveField(15)
  final int? ageFrom;
  @override
  @HiveField(16)
  final int? ageTo;
  @override
  @HiveField(17)
  final DateTime? dateFrom;

  @override
  String toString() {
    return 'Facility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, order: $order, indYesOrNo: $indYesOrNo, number: $number, voucher: $voucher, indLogic: $indLogic, indFee: $indFee, distance: $distance, timeFrom: $timeFrom, timeTo: $timeTo, dateTo: $dateTo, amount: $amount, currency: $currency, applicationType: $applicationType, ageFrom: $ageFrom, ageTo: $ageTo, dateFrom: $dateFrom)';
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
            const DeepCollectionEquality().equals(other.voucher, voucher) &&
            const DeepCollectionEquality().equals(other.indLogic, indLogic) &&
            const DeepCollectionEquality().equals(other.indFee, indFee) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.timeFrom, timeFrom) &&
            const DeepCollectionEquality().equals(other.timeTo, timeTo) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.applicationType, applicationType) &&
            const DeepCollectionEquality().equals(other.ageFrom, ageFrom) &&
            const DeepCollectionEquality().equals(other.ageTo, ageTo) &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom));
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
      const DeepCollectionEquality().hash(voucher),
      const DeepCollectionEquality().hash(indLogic),
      const DeepCollectionEquality().hash(indFee),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(timeFrom),
      const DeepCollectionEquality().hash(timeTo),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(applicationType),
      const DeepCollectionEquality().hash(ageFrom),
      const DeepCollectionEquality().hash(ageTo),
      const DeepCollectionEquality().hash(dateFrom));

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
  const factory _Facility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? order,
      @HiveField(3) final bool? indYesOrNo,
      @HiveField(4) final int? number,
      @HiveField(5) final bool? voucher,
      @HiveField(6) final bool? indLogic,
      @HiveField(7) final bool? indFee,
      @HiveField(8) final int? distance,
      @HiveField(9) final String? timeFrom,
      @HiveField(10) final String? timeTo,
      @HiveField(11) final DateTime? dateTo,
      @HiveField(12) final double? amount,
      @HiveField(13) final String? currency,
      @HiveField(14) final String? applicationType,
      @HiveField(15) final int? ageFrom,
      @HiveField(16) final int? ageTo,
      @HiveField(17) final DateTime? dateFrom}) = _$_Facility;

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
  @HiveField(6)
  bool? get indLogic;
  @override
  @HiveField(7)
  bool? get indFee;
  @override
  @HiveField(8)
  int? get distance;
  @override
  @HiveField(9)
  String? get timeFrom;
  @override
  @HiveField(10)
  String? get timeTo;
  @override
  @HiveField(11)
  DateTime? get dateTo;
  @override
  @HiveField(12)
  double? get amount;
  @override
  @HiveField(13)
  String? get currency;
  @override
  @HiveField(14)
  String? get applicationType;
  @override
  @HiveField(15)
  int? get ageFrom;
  @override
  @HiveField(16)
  int? get ageTo;
  @override
  @HiveField(17)
  DateTime? get dateFrom;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityCopyWith<_$_Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @HiveField(0)
  String? get imageTypeCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get path => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get order => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get visualOrder => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get roomCode => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get roomType => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get characteristicCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder,
      @HiveField(4) String? roomCode,
      @HiveField(5) String? roomType,
      @HiveField(6) String? characteristicCode});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
    Object? roomCode = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
  }) {
    return _then(_value.copyWith(
      imageTypeCode: imageTypeCode == freezed
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: visualOrder == freezed
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder,
      @HiveField(4) String? roomCode,
      @HiveField(5) String? roomType,
      @HiveField(6) String? characteristicCode});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, (v) => _then(v as _$_Image));

  @override
  _$_Image get _value => super._value as _$_Image;

  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
    Object? roomCode = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
  }) {
    return _then(_$_Image(
      imageTypeCode: imageTypeCode == freezed
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: visualOrder == freezed
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image(
      {@HiveField(0) this.imageTypeCode,
      @HiveField(1) this.path,
      @HiveField(2) this.order,
      @HiveField(3) this.visualOrder,
      @HiveField(4) this.roomCode,
      @HiveField(5) this.roomType,
      @HiveField(6) this.characteristicCode});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  @HiveField(0)
  final String? imageTypeCode;
  @override
  @HiveField(1)
  final String? path;
  @override
  @HiveField(2)
  final int? order;
  @override
  @HiveField(3)
  final int? visualOrder;
  @override
  @HiveField(4)
  final String? roomCode;
  @override
  @HiveField(5)
  final String? roomType;
  @override
  @HiveField(6)
  final String? characteristicCode;

  @override
  String toString() {
    return 'Image(imageTypeCode: $imageTypeCode, path: $path, order: $order, visualOrder: $visualOrder, roomCode: $roomCode, roomType: $roomType, characteristicCode: $characteristicCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            const DeepCollectionEquality()
                .equals(other.imageTypeCode, imageTypeCode) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.visualOrder, visualOrder) &&
            const DeepCollectionEquality().equals(other.roomCode, roomCode) &&
            const DeepCollectionEquality().equals(other.roomType, roomType) &&
            const DeepCollectionEquality()
                .equals(other.characteristicCode, characteristicCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageTypeCode),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(visualOrder),
      const DeepCollectionEquality().hash(roomCode),
      const DeepCollectionEquality().hash(roomType),
      const DeepCollectionEquality().hash(characteristicCode));

  @JsonKey(ignore: true)
  @override
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@HiveField(0) final String? imageTypeCode,
      @HiveField(1) final String? path,
      @HiveField(2) final int? order,
      @HiveField(3) final int? visualOrder,
      @HiveField(4) final String? roomCode,
      @HiveField(5) final String? roomType,
      @HiveField(6) final String? characteristicCode}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  @HiveField(0)
  String? get imageTypeCode;
  @override
  @HiveField(1)
  String? get path;
  @override
  @HiveField(2)
  int? get order;
  @override
  @HiveField(3)
  int? get visualOrder;
  @override
  @HiveField(4)
  String? get roomCode;
  @override
  @HiveField(5)
  String? get roomType;
  @override
  @HiveField(6)
  String? get characteristicCode;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Phone _$PhoneFromJson(Map<String, dynamic> json) {
  return _Phone.fromJson(json);
}

/// @nodoc
mixin _$Phone {
  @HiveField(0)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get phoneType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneCopyWith<Phone> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneCopyWith<$Res> {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) then) =
      _$PhoneCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? phoneNumber, @HiveField(1) String? phoneType});
}

/// @nodoc
class _$PhoneCopyWithImpl<$Res> implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(this._value, this._then);

  final Phone _value;
  // ignore: unused_field
  final $Res Function(Phone) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? phoneType = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneType: phoneType == freezed
          ? _value.phoneType
          : phoneType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneCopyWith<$Res> implements $PhoneCopyWith<$Res> {
  factory _$$_PhoneCopyWith(_$_Phone value, $Res Function(_$_Phone) then) =
      __$$_PhoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? phoneNumber, @HiveField(1) String? phoneType});
}

/// @nodoc
class __$$_PhoneCopyWithImpl<$Res> extends _$PhoneCopyWithImpl<$Res>
    implements _$$_PhoneCopyWith<$Res> {
  __$$_PhoneCopyWithImpl(_$_Phone _value, $Res Function(_$_Phone) _then)
      : super(_value, (v) => _then(v as _$_Phone));

  @override
  _$_Phone get _value => super._value as _$_Phone;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? phoneType = freezed,
  }) {
    return _then(_$_Phone(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneType: phoneType == freezed
          ? _value.phoneType
          : phoneType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Phone implements _Phone {
  const _$_Phone(
      {@HiveField(0) this.phoneNumber, @HiveField(1) this.phoneType});

  factory _$_Phone.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneFromJson(json);

  @override
  @HiveField(0)
  final String? phoneNumber;
  @override
  @HiveField(1)
  final String? phoneType;

  @override
  String toString() {
    return 'Phone(phoneNumber: $phoneNumber, phoneType: $phoneType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phone &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.phoneType, phoneType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(phoneType));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      __$$_PhoneCopyWithImpl<_$_Phone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneToJson(
      this,
    );
  }
}

abstract class _Phone implements Phone {
  const factory _Phone(
      {@HiveField(0) final String? phoneNumber,
      @HiveField(1) final String? phoneType}) = _$_Phone;

  factory _Phone.fromJson(Map<String, dynamic> json) = _$_Phone.fromJson;

  @override
  @HiveField(0)
  String? get phoneNumber;
  @override
  @HiveField(1)
  String? get phoneType;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      throw _privateConstructorUsedError;
}

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  @HiveField(0)
  String? get roomCode => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isParentRoom => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get minPax => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get maxPax => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get maxAdults => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get maxChildren => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get minAdults => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get roomType => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get characteristicCode => throw _privateConstructorUsedError;
  @HiveField(9)
  List<RoomFacility>? get roomFacilities => throw _privateConstructorUsedError;
  @HiveField(10)
  List<RoomStay>? get roomStays => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get pmsRoomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? roomCode,
      @HiveField(1) bool? isParentRoom,
      @HiveField(2) int? minPax,
      @HiveField(3) int? maxPax,
      @HiveField(4) int? maxAdults,
      @HiveField(5) int? maxChildren,
      @HiveField(6) int? minAdults,
      @HiveField(7) String? roomType,
      @HiveField(8) String? characteristicCode,
      @HiveField(9) List<RoomFacility>? roomFacilities,
      @HiveField(10) List<RoomStay>? roomStays,
      @HiveField(11) String? pmsRoomCode});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_value.copyWith(
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: isParentRoom == freezed
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: minPax == freezed
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: maxPax == freezed
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: maxAdults == freezed
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: maxChildren == freezed
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: minAdults == freezed
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: roomFacilities == freezed
          ? _value.roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: roomStays == freezed
          ? _value.roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: pmsRoomCode == freezed
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? roomCode,
      @HiveField(1) bool? isParentRoom,
      @HiveField(2) int? minPax,
      @HiveField(3) int? maxPax,
      @HiveField(4) int? maxAdults,
      @HiveField(5) int? maxChildren,
      @HiveField(6) int? minAdults,
      @HiveField(7) String? roomType,
      @HiveField(8) String? characteristicCode,
      @HiveField(9) List<RoomFacility>? roomFacilities,
      @HiveField(10) List<RoomStay>? roomStays,
      @HiveField(11) String? pmsRoomCode});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, (v) => _then(v as _$_Room));

  @override
  _$_Room get _value => super._value as _$_Room;

  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_$_Room(
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: isParentRoom == freezed
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: minPax == freezed
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: maxPax == freezed
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: maxAdults == freezed
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: maxChildren == freezed
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: minAdults == freezed
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: roomFacilities == freezed
          ? _value._roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: roomStays == freezed
          ? _value._roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: pmsRoomCode == freezed
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room(
      {@HiveField(0) this.roomCode,
      @HiveField(1) this.isParentRoom,
      @HiveField(2) this.minPax,
      @HiveField(3) this.maxPax,
      @HiveField(4) this.maxAdults,
      @HiveField(5) this.maxChildren,
      @HiveField(6) this.minAdults,
      @HiveField(7) this.roomType,
      @HiveField(8) this.characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @HiveField(11) this.pmsRoomCode})
      : _roomFacilities = roomFacilities,
        _roomStays = roomStays;

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  @HiveField(0)
  final String? roomCode;
  @override
  @HiveField(1)
  final bool? isParentRoom;
  @override
  @HiveField(2)
  final int? minPax;
  @override
  @HiveField(3)
  final int? maxPax;
  @override
  @HiveField(4)
  final int? maxAdults;
  @override
  @HiveField(5)
  final int? maxChildren;
  @override
  @HiveField(6)
  final int? minAdults;
  @override
  @HiveField(7)
  final String? roomType;
  @override
  @HiveField(8)
  final String? characteristicCode;
  final List<RoomFacility>? _roomFacilities;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities {
    final value = _roomFacilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RoomStay>? _roomStays;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays {
    final value = _roomStays;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final String? pmsRoomCode;

  @override
  String toString() {
    return 'Room(roomCode: $roomCode, isParentRoom: $isParentRoom, minPax: $minPax, maxPax: $maxPax, maxAdults: $maxAdults, maxChildren: $maxChildren, minAdults: $minAdults, roomType: $roomType, characteristicCode: $characteristicCode, roomFacilities: $roomFacilities, roomStays: $roomStays, pmsRoomCode: $pmsRoomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            const DeepCollectionEquality().equals(other.roomCode, roomCode) &&
            const DeepCollectionEquality()
                .equals(other.isParentRoom, isParentRoom) &&
            const DeepCollectionEquality().equals(other.minPax, minPax) &&
            const DeepCollectionEquality().equals(other.maxPax, maxPax) &&
            const DeepCollectionEquality().equals(other.maxAdults, maxAdults) &&
            const DeepCollectionEquality()
                .equals(other.maxChildren, maxChildren) &&
            const DeepCollectionEquality().equals(other.minAdults, minAdults) &&
            const DeepCollectionEquality().equals(other.roomType, roomType) &&
            const DeepCollectionEquality()
                .equals(other.characteristicCode, characteristicCode) &&
            const DeepCollectionEquality()
                .equals(other._roomFacilities, _roomFacilities) &&
            const DeepCollectionEquality()
                .equals(other._roomStays, _roomStays) &&
            const DeepCollectionEquality()
                .equals(other.pmsRoomCode, pmsRoomCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomCode),
      const DeepCollectionEquality().hash(isParentRoom),
      const DeepCollectionEquality().hash(minPax),
      const DeepCollectionEquality().hash(maxPax),
      const DeepCollectionEquality().hash(maxAdults),
      const DeepCollectionEquality().hash(maxChildren),
      const DeepCollectionEquality().hash(minAdults),
      const DeepCollectionEquality().hash(roomType),
      const DeepCollectionEquality().hash(characteristicCode),
      const DeepCollectionEquality().hash(_roomFacilities),
      const DeepCollectionEquality().hash(_roomStays),
      const DeepCollectionEquality().hash(pmsRoomCode));

  @JsonKey(ignore: true)
  @override
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {@HiveField(0) final String? roomCode,
      @HiveField(1) final bool? isParentRoom,
      @HiveField(2) final int? minPax,
      @HiveField(3) final int? maxPax,
      @HiveField(4) final int? maxAdults,
      @HiveField(5) final int? maxChildren,
      @HiveField(6) final int? minAdults,
      @HiveField(7) final String? roomType,
      @HiveField(8) final String? characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @HiveField(11) final String? pmsRoomCode}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  @HiveField(0)
  String? get roomCode;
  @override
  @HiveField(1)
  bool? get isParentRoom;
  @override
  @HiveField(2)
  int? get minPax;
  @override
  @HiveField(3)
  int? get maxPax;
  @override
  @HiveField(4)
  int? get maxAdults;
  @override
  @HiveField(5)
  int? get maxChildren;
  @override
  @HiveField(6)
  int? get minAdults;
  @override
  @HiveField(7)
  String? get roomType;
  @override
  @HiveField(8)
  String? get characteristicCode;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays;
  @override
  @HiveField(11)
  String? get pmsRoomCode;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}

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
  int? get number => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get voucher => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get indFee => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get indYesOrNo => throw _privateConstructorUsedError;

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
      @HiveField(3) int? number,
      @HiveField(4) bool? voucher,
      @HiveField(5) bool? indFee,
      @HiveField(6) bool? indYesOrNo});
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
    Object? number = freezed,
    Object? voucher = freezed,
    Object? indFee = freezed,
    Object? indYesOrNo = freezed,
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
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
      indFee: indFee == freezed
          ? _value.indFee
          : indFee // ignore: cast_nullable_to_non_nullable
              as bool?,
      indYesOrNo: indYesOrNo == freezed
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
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
      @HiveField(3) int? number,
      @HiveField(4) bool? voucher,
      @HiveField(5) bool? indFee,
      @HiveField(6) bool? indYesOrNo});
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
    Object? number = freezed,
    Object? voucher = freezed,
    Object? indFee = freezed,
    Object? indYesOrNo = freezed,
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
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: voucher == freezed
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
      indFee: indFee == freezed
          ? _value.indFee
          : indFee // ignore: cast_nullable_to_non_nullable
              as bool?,
      indYesOrNo: indYesOrNo == freezed
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomFacility implements _RoomFacility {
  const _$_RoomFacility(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.indLogic,
      @HiveField(3) this.number,
      @HiveField(4) this.voucher,
      @HiveField(5) this.indFee,
      @HiveField(6) this.indYesOrNo});

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
  final int? number;
  @override
  @HiveField(4)
  final bool? voucher;
  @override
  @HiveField(5)
  final bool? indFee;
  @override
  @HiveField(6)
  final bool? indYesOrNo;

  @override
  String toString() {
    return 'RoomFacility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, indLogic: $indLogic, number: $number, voucher: $voucher, indFee: $indFee, indYesOrNo: $indYesOrNo)';
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
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.voucher, voucher) &&
            const DeepCollectionEquality().equals(other.indFee, indFee) &&
            const DeepCollectionEquality()
                .equals(other.indYesOrNo, indYesOrNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facilityCode),
      const DeepCollectionEquality().hash(facilityGroupCode),
      const DeepCollectionEquality().hash(indLogic),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(voucher),
      const DeepCollectionEquality().hash(indFee),
      const DeepCollectionEquality().hash(indYesOrNo));

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
  const factory _RoomFacility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final bool? indLogic,
      @HiveField(3) final int? number,
      @HiveField(4) final bool? voucher,
      @HiveField(5) final bool? indFee,
      @HiveField(6) final bool? indYesOrNo}) = _$_RoomFacility;

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
  int? get number;
  @override
  @HiveField(4)
  bool? get voucher;
  @override
  @HiveField(5)
  bool? get indFee;
  @override
  @HiveField(6)
  bool? get indYesOrNo;
  @override
  @JsonKey(ignore: true)
  _$$_RoomFacilityCopyWith<_$_RoomFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomStay _$RoomStayFromJson(Map<String, dynamic> json) {
  return _RoomStay.fromJson(json);
}

/// @nodoc
mixin _$RoomStay {
  @HiveField(0)
  String? get stayType => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get order => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomStayCopyWith<RoomStay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStayCopyWith<$Res> {
  factory $RoomStayCopyWith(RoomStay value, $Res Function(RoomStay) then) =
      _$RoomStayCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class _$RoomStayCopyWithImpl<$Res> implements $RoomStayCopyWith<$Res> {
  _$RoomStayCopyWithImpl(this._value, this._then);

  final RoomStay _value;
  // ignore: unused_field
  final $Res Function(RoomStay) _then;

  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_value.copyWith(
      stayType: stayType == freezed
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: roomStayFacilities == freezed
          ? _value.roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomStayCopyWith<$Res> implements $RoomStayCopyWith<$Res> {
  factory _$$_RoomStayCopyWith(
          _$_RoomStay value, $Res Function(_$_RoomStay) then) =
      __$$_RoomStayCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class __$$_RoomStayCopyWithImpl<$Res> extends _$RoomStayCopyWithImpl<$Res>
    implements _$$_RoomStayCopyWith<$Res> {
  __$$_RoomStayCopyWithImpl(
      _$_RoomStay _value, $Res Function(_$_RoomStay) _then)
      : super(_value, (v) => _then(v as _$_RoomStay));

  @override
  _$_RoomStay get _value => super._value as _$_RoomStay;

  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_$_RoomStay(
      stayType: stayType == freezed
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: roomStayFacilities == freezed
          ? _value._roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomStay implements _RoomStay {
  const _$_RoomStay(
      {@HiveField(0) this.stayType,
      @HiveField(1) this.order,
      @HiveField(2) this.description,
      @HiveField(3) final List<RoomStayFacility>? roomStayFacilities})
      : _roomStayFacilities = roomStayFacilities;

  factory _$_RoomStay.fromJson(Map<String, dynamic> json) =>
      _$$_RoomStayFromJson(json);

  @override
  @HiveField(0)
  final String? stayType;
  @override
  @HiveField(1)
  final String? order;
  @override
  @HiveField(2)
  final String? description;
  final List<RoomStayFacility>? _roomStayFacilities;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities {
    final value = _roomStayFacilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomStay(stayType: $stayType, order: $order, description: $description, roomStayFacilities: $roomStayFacilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomStay &&
            const DeepCollectionEquality().equals(other.stayType, stayType) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._roomStayFacilities, _roomStayFacilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stayType),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_roomStayFacilities));

  @JsonKey(ignore: true)
  @override
  _$$_RoomStayCopyWith<_$_RoomStay> get copyWith =>
      __$$_RoomStayCopyWithImpl<_$_RoomStay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomStayToJson(
      this,
    );
  }
}

abstract class _RoomStay implements RoomStay {
  const factory _RoomStay(
          {@HiveField(0) final String? stayType,
          @HiveField(1) final String? order,
          @HiveField(2) final String? description,
          @HiveField(3) final List<RoomStayFacility>? roomStayFacilities}) =
      _$_RoomStay;

  factory _RoomStay.fromJson(Map<String, dynamic> json) = _$_RoomStay.fromJson;

  @override
  @HiveField(0)
  String? get stayType;
  @override
  @HiveField(1)
  String? get order;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities;
  @override
  @JsonKey(ignore: true)
  _$$_RoomStayCopyWith<_$_RoomStay> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  const _$_RoomStayFacility(
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
  const factory _RoomStayFacility(
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

Terminal _$TerminalFromJson(Map<String, dynamic> json) {
  return _Terminal.fromJson(json);
}

/// @nodoc
mixin _$Terminal {
  @HiveField(0)
  String? get terminalCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminalCopyWith<Terminal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminalCopyWith<$Res> {
  factory $TerminalCopyWith(Terminal value, $Res Function(Terminal) then) =
      _$TerminalCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? terminalCode, @HiveField(1) int? distance});
}

/// @nodoc
class _$TerminalCopyWithImpl<$Res> implements $TerminalCopyWith<$Res> {
  _$TerminalCopyWithImpl(this._value, this._then);

  final Terminal _value;
  // ignore: unused_field
  final $Res Function(Terminal) _then;

  @override
  $Res call({
    Object? terminalCode = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      terminalCode: terminalCode == freezed
          ? _value.terminalCode
          : terminalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_TerminalCopyWith<$Res> implements $TerminalCopyWith<$Res> {
  factory _$$_TerminalCopyWith(
          _$_Terminal value, $Res Function(_$_Terminal) then) =
      __$$_TerminalCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? terminalCode, @HiveField(1) int? distance});
}

/// @nodoc
class __$$_TerminalCopyWithImpl<$Res> extends _$TerminalCopyWithImpl<$Res>
    implements _$$_TerminalCopyWith<$Res> {
  __$$_TerminalCopyWithImpl(
      _$_Terminal _value, $Res Function(_$_Terminal) _then)
      : super(_value, (v) => _then(v as _$_Terminal));

  @override
  _$_Terminal get _value => super._value as _$_Terminal;

  @override
  $Res call({
    Object? terminalCode = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$_Terminal(
      terminalCode: terminalCode == freezed
          ? _value.terminalCode
          : terminalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Terminal implements _Terminal {
  const _$_Terminal(
      {@HiveField(0) this.terminalCode, @HiveField(1) this.distance});

  factory _$_Terminal.fromJson(Map<String, dynamic> json) =>
      _$$_TerminalFromJson(json);

  @override
  @HiveField(0)
  final String? terminalCode;
  @override
  @HiveField(1)
  final int? distance;

  @override
  String toString() {
    return 'Terminal(terminalCode: $terminalCode, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Terminal &&
            const DeepCollectionEquality()
                .equals(other.terminalCode, terminalCode) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(terminalCode),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$_TerminalCopyWith<_$_Terminal> get copyWith =>
      __$$_TerminalCopyWithImpl<_$_Terminal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TerminalToJson(
      this,
    );
  }
}

abstract class _Terminal implements Terminal {
  const factory _Terminal(
      {@HiveField(0) final String? terminalCode,
      @HiveField(1) final int? distance}) = _$_Terminal;

  factory _Terminal.fromJson(Map<String, dynamic> json) = _$_Terminal.fromJson;

  @override
  @HiveField(0)
  String? get terminalCode;
  @override
  @HiveField(1)
  int? get distance;
  @override
  @JsonKey(ignore: true)
  _$$_TerminalCopyWith<_$_Terminal> get copyWith =>
      throw _privateConstructorUsedError;
}

Wildcard _$WildcardFromJson(Map<String, dynamic> json) {
  return _Wildcard.fromJson(json);
}

/// @nodoc
mixin _$Wildcard {
  @HiveField(0)
  String? get roomType => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get roomCode => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get characteristicCode => throw _privateConstructorUsedError;
  @HiveField(3)
  City? get hotelRoomDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WildcardCopyWith<Wildcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WildcardCopyWith<$Res> {
  factory $WildcardCopyWith(Wildcard value, $Res Function(Wildcard) then) =
      _$WildcardCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? roomType,
      @HiveField(1) String? roomCode,
      @HiveField(2) String? characteristicCode,
      @HiveField(3) City? hotelRoomDescription});

  $CityCopyWith<$Res>? get hotelRoomDescription;
}

/// @nodoc
class _$WildcardCopyWithImpl<$Res> implements $WildcardCopyWith<$Res> {
  _$WildcardCopyWithImpl(this._value, this._then);

  final Wildcard _value;
  // ignore: unused_field
  final $Res Function(Wildcard) _then;

  @override
  $Res call({
    Object? roomType = freezed,
    Object? roomCode = freezed,
    Object? characteristicCode = freezed,
    Object? hotelRoomDescription = freezed,
  }) {
    return _then(_value.copyWith(
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelRoomDescription: hotelRoomDescription == freezed
          ? _value.hotelRoomDescription
          : hotelRoomDescription // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  @override
  $CityCopyWith<$Res>? get hotelRoomDescription {
    if (_value.hotelRoomDescription == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.hotelRoomDescription!, (value) {
      return _then(_value.copyWith(hotelRoomDescription: value));
    });
  }
}

/// @nodoc
abstract class _$$_WildcardCopyWith<$Res> implements $WildcardCopyWith<$Res> {
  factory _$$_WildcardCopyWith(
          _$_Wildcard value, $Res Function(_$_Wildcard) then) =
      __$$_WildcardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? roomType,
      @HiveField(1) String? roomCode,
      @HiveField(2) String? characteristicCode,
      @HiveField(3) City? hotelRoomDescription});

  @override
  $CityCopyWith<$Res>? get hotelRoomDescription;
}

/// @nodoc
class __$$_WildcardCopyWithImpl<$Res> extends _$WildcardCopyWithImpl<$Res>
    implements _$$_WildcardCopyWith<$Res> {
  __$$_WildcardCopyWithImpl(
      _$_Wildcard _value, $Res Function(_$_Wildcard) _then)
      : super(_value, (v) => _then(v as _$_Wildcard));

  @override
  _$_Wildcard get _value => super._value as _$_Wildcard;

  @override
  $Res call({
    Object? roomType = freezed,
    Object? roomCode = freezed,
    Object? characteristicCode = freezed,
    Object? hotelRoomDescription = freezed,
  }) {
    return _then(_$_Wildcard(
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelRoomDescription: hotelRoomDescription == freezed
          ? _value.hotelRoomDescription
          : hotelRoomDescription // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wildcard implements _Wildcard {
  const _$_Wildcard(
      {@HiveField(0) this.roomType,
      @HiveField(1) this.roomCode,
      @HiveField(2) this.characteristicCode,
      @HiveField(3) this.hotelRoomDescription});

  factory _$_Wildcard.fromJson(Map<String, dynamic> json) =>
      _$$_WildcardFromJson(json);

  @override
  @HiveField(0)
  final String? roomType;
  @override
  @HiveField(1)
  final String? roomCode;
  @override
  @HiveField(2)
  final String? characteristicCode;
  @override
  @HiveField(3)
  final City? hotelRoomDescription;

  @override
  String toString() {
    return 'Wildcard(roomType: $roomType, roomCode: $roomCode, characteristicCode: $characteristicCode, hotelRoomDescription: $hotelRoomDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wildcard &&
            const DeepCollectionEquality().equals(other.roomType, roomType) &&
            const DeepCollectionEquality().equals(other.roomCode, roomCode) &&
            const DeepCollectionEquality()
                .equals(other.characteristicCode, characteristicCode) &&
            const DeepCollectionEquality()
                .equals(other.hotelRoomDescription, hotelRoomDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomType),
      const DeepCollectionEquality().hash(roomCode),
      const DeepCollectionEquality().hash(characteristicCode),
      const DeepCollectionEquality().hash(hotelRoomDescription));

  @JsonKey(ignore: true)
  @override
  _$$_WildcardCopyWith<_$_Wildcard> get copyWith =>
      __$$_WildcardCopyWithImpl<_$_Wildcard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WildcardToJson(
      this,
    );
  }
}

abstract class _Wildcard implements Wildcard {
  const factory _Wildcard(
      {@HiveField(0) final String? roomType,
      @HiveField(1) final String? roomCode,
      @HiveField(2) final String? characteristicCode,
      @HiveField(3) final City? hotelRoomDescription}) = _$_Wildcard;

  factory _Wildcard.fromJson(Map<String, dynamic> json) = _$_Wildcard.fromJson;

  @override
  @HiveField(0)
  String? get roomType;
  @override
  @HiveField(1)
  String? get roomCode;
  @override
  @HiveField(2)
  String? get characteristicCode;
  @override
  @HiveField(3)
  City? get hotelRoomDescription;
  @override
  @JsonKey(ignore: true)
  _$$_WildcardCopyWith<_$_Wildcard> get copyWith =>
      throw _privateConstructorUsedError;
}
