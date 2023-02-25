// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'occupancy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OccupancyAdapter extends TypeAdapter<Occupancy> {
  @override
  final int typeId = 25;

  @override
  Occupancy read(BinaryReader reader) {
    return Occupancy();
  }

  @override
  void write(BinaryWriter writer, Occupancy obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OccupancyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Occupancy _$$_OccupancyFromJson(Map<String, dynamic> json) => _$_Occupancy(
      rooms: json['rooms'] as int?,
      adults: json['adults'] as int?,
      children: json['children'] as int?,
    );

Map<String, dynamic> _$$_OccupancyToJson(_$_Occupancy instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
      'adults': instance.adults,
      'children': instance.children,
    };
