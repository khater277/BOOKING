// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'room_stay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomStayAdapter extends TypeAdapter<RoomStay> {
  @override
  final int typeId = 20;

  @override
  RoomStay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomStay(
      stayType: fields[0] as String?,
      order: fields[1] as String?,
      description: fields[2] as String?,
      roomStayFacilities: (fields[3] as List?)?.cast<RoomStayFacility>(),
    );
  }

  @override
  void write(BinaryWriter writer, RoomStay obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.stayType)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.roomStayFacilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomStayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomStay _$$_RoomStayFromJson(Map<String, dynamic> json) => _$_RoomStay(
      stayType: json['stayType'] as String?,
      order: json['order'] as String?,
      description: json['description'] as String?,
      roomStayFacilities: (json['roomStayFacilities'] as List<dynamic>?)
          ?.map((e) => RoomStayFacility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomStayToJson(_$_RoomStay instance) =>
    <String, dynamic>{
      'stayType': instance.stayType,
      'order': instance.order,
      'description': instance.description,
      'roomStayFacilities': instance.roomStayFacilities,
    };
