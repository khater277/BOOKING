// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailableRoomAdapter extends TypeAdapter<AvailableRoom> {
  @override
  final int typeId = 33;

  @override
  AvailableRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailableRoom(
      code: fields[0] as String?,
      name: fields[1] as String?,
      availableRates: (fields[2] as List?)?.cast<AvailableRate>(),
    );
  }

  @override
  void write(BinaryWriter writer, AvailableRoom obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.availableRates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailableRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailableRoom _$$_AvailableRoomFromJson(Map<String, dynamic> json) =>
    _$_AvailableRoom(
      code: json['code'] as String?,
      name: json['name'] as String?,
      availableRates: (json['rates'] as List<dynamic>?)
          ?.map((e) => AvailableRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AvailableRoomToJson(_$_AvailableRoom instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'rates': instance.availableRates,
    };
