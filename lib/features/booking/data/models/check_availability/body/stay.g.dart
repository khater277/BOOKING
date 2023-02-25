// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'stay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StayAdapter extends TypeAdapter<Stay> {
  @override
  final int typeId = 26;

  @override
  Stay read(BinaryReader reader) {
    return Stay();
  }

  @override
  void write(BinaryWriter writer, Stay obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stay _$$_StayFromJson(Map<String, dynamic> json) => _$_Stay(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
    );

Map<String, dynamic> _$$_StayToJson(_$_Stay instance) => <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
    };
