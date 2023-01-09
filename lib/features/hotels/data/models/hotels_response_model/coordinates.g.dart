// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'coordinates.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoordinatesAdapter extends TypeAdapter<Coordinates> {
  @override
  final int typeId = 7;

  @override
  Coordinates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coordinates(
      longitude: fields[0] as double?,
      latitude: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Coordinates obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.longitude)
      ..writeByte(1)
      ..write(obj.latitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coordinates _$$_CoordinatesFromJson(Map<String, dynamic> json) =>
    _$_Coordinates(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
