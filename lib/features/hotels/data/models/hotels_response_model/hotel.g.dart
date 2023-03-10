// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'hotel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelAdapter extends TypeAdapter<Hotel> {
  @override
  final int typeId = 10;

  @override
  Hotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hotel(
      code: fields[0] as int?,
      name: fields[1] as Name?,
      description: fields[2] as Description?,
      countryCode: fields[3] as String?,
      coordinates: fields[4] as Coordinates?,
      address: fields[5] as Address?,
      city: fields[6] as City?,
      email: fields[7] as String?,
      phones: (fields[8] as List?)?.cast<Phone>(),
      facilities: (fields[9] as List?)?.cast<Facility>(),
      images: (fields[10] as List?)?.cast<Image>(),
    );
  }

  @override
  void write(BinaryWriter writer, Hotel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.countryCode)
      ..writeByte(4)
      ..write(obj.coordinates)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.city)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.phones)
      ..writeByte(9)
      ..write(obj.facilities)
      ..writeByte(10)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hotel _$$_HotelFromJson(Map<String, dynamic> json) => _$_Hotel(
      code: json['code'] as int?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      email: json['email'] as String?,
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      facilities: (json['facilities'] as List<dynamic>?)
          ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HotelToJson(_$_Hotel instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'countryCode': instance.countryCode,
      'coordinates': instance.coordinates,
      'address': instance.address,
      'city': instance.city,
      'email': instance.email,
      'phones': instance.phones,
      'facilities': instance.facilities,
      'images': instance.images,
    };
