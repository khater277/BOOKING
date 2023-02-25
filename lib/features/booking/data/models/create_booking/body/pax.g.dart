// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'pax.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaxAdapter extends TypeAdapter<Pax> {
  @override
  final int typeId = 49;

  @override
  Pax read(BinaryReader reader) {
    return Pax();
  }

  @override
  void write(BinaryWriter writer, Pax obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pax _$$_PaxFromJson(Map<String, dynamic> json) => _$_Pax(
      roomId: json['roomId'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$_PaxToJson(_$_Pax instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'type': instance.type,
      'name': instance.name,
      'surname': instance.surname,
    };
