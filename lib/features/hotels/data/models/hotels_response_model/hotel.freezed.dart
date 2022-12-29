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

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  Name? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  Description? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get countryCode => throw _privateConstructorUsedError;
  @HiveField(4)
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  @HiveField(5)
  Address? get address => throw _privateConstructorUsedError;
  @HiveField(6)
  City? get city => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(8)
  List<Phone>? get phones => throw _privateConstructorUsedError;
  @HiveField(9)
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @HiveField(10)
  List<Image>? get images => throw _privateConstructorUsedError;

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
      @HiveField(1) Name? name,
      @HiveField(2) Description? description,
      @HiveField(3) String? countryCode,
      @HiveField(4) Coordinates? coordinates,
      @HiveField(5) Address? address,
      @HiveField(6) City? city,
      @HiveField(7) String? email,
      @HiveField(8) List<Phone>? phones,
      @HiveField(9) List<Facility>? facilities,
      @HiveField(10) List<Image>? images});

  $NameCopyWith<$Res>? get name;
  $DescriptionCopyWith<$Res>? get description;
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
    Object? coordinates = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? phones = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      facilities: facilities == freezed
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }

  @override
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $DescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $DescriptionCopyWith<$Res>(_value.description!, (value) {
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
      @HiveField(1) Name? name,
      @HiveField(2) Description? description,
      @HiveField(3) String? countryCode,
      @HiveField(4) Coordinates? coordinates,
      @HiveField(5) Address? address,
      @HiveField(6) City? city,
      @HiveField(7) String? email,
      @HiveField(8) List<Phone>? phones,
      @HiveField(9) List<Facility>? facilities,
      @HiveField(10) List<Image>? images});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $DescriptionCopyWith<$Res>? get description;
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
    Object? coordinates = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? phones = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_Hotel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: phones == freezed
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      facilities: facilities == freezed
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hotel implements _Hotel {
  _$_Hotel(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) this.description,
      @HiveField(3) this.countryCode,
      @HiveField(4) this.coordinates,
      @HiveField(5) this.address,
      @HiveField(6) this.city,
      @HiveField(7) this.email,
      @HiveField(8) final List<Phone>? phones,
      @HiveField(9) final List<Facility>? facilities,
      @HiveField(10) final List<Image>? images})
      : _phones = phones,
        _facilities = facilities,
        _images = images;

  factory _$_Hotel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final Name? name;
  @override
  @HiveField(2)
  final Description? description;
  @override
  @HiveField(3)
  final String? countryCode;
  @override
  @HiveField(4)
  final Coordinates? coordinates;
  @override
  @HiveField(5)
  final Address? address;
  @override
  @HiveField(6)
  final City? city;
  @override
  @HiveField(7)
  final String? email;
  final List<Phone>? _phones;
  @override
  @HiveField(8)
  List<Phone>? get phones {
    final value = _phones;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Facility>? _facilities;
  @override
  @HiveField(9)
  List<Facility>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  @HiveField(10)
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hotel(code: $code, name: $name, description: $description, countryCode: $countryCode, coordinates: $coordinates, address: $address, city: $city, email: $email, phones: $phones, facilities: $facilities, images: $images)';
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
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(countryCode),
      const DeepCollectionEquality().hash(coordinates),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_facilities),
      const DeepCollectionEquality().hash(_images));

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
  factory _Hotel(
      {@HiveField(0) final int? code,
      @HiveField(1) final Name? name,
      @HiveField(2) final Description? description,
      @HiveField(3) final String? countryCode,
      @HiveField(4) final Coordinates? coordinates,
      @HiveField(5) final Address? address,
      @HiveField(6) final City? city,
      @HiveField(7) final String? email,
      @HiveField(8) final List<Phone>? phones,
      @HiveField(9) final List<Facility>? facilities,
      @HiveField(10) final List<Image>? images}) = _$_Hotel;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$_Hotel.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  Name? get name;
  @override
  @HiveField(2)
  Description? get description;
  @override
  @HiveField(3)
  String? get countryCode;
  @override
  @HiveField(4)
  Coordinates? get coordinates;
  @override
  @HiveField(5)
  Address? get address;
  @override
  @HiveField(6)
  City? get city;
  @override
  @HiveField(7)
  String? get email;
  @override
  @HiveField(8)
  List<Phone>? get phones;
  @override
  @HiveField(9)
  List<Facility>? get facilities;
  @override
  @HiveField(10)
  List<Image>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}
