// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RateRoomAdapter extends TypeAdapter<RateRoom> {
  @override
  final int typeId = 37;

  @override
  RateRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RateRoom();
  }

  @override
  void write(BinaryWriter writer, RateRoom obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RateRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RateRoom _$$_RateRoomFromJson(Map<String, dynamic> json) => _$_RateRoom(
      rateKey: json['rateKey'] as String?,
    );

Map<String, dynamic> _$$_RateRoomToJson(_$_RateRoom instance) =>
    <String, dynamic>{
      'rateKey': instance.rateKey,
    };
