// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'hotels.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelsAdapter extends TypeAdapter<Hotels> {
  @override
  final int typeId = 24;

  @override
  Hotels read(BinaryReader reader) {
    return Hotels();
  }

  @override
  void write(BinaryWriter writer, Hotels obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hotels _$$_HotelsFromJson(Map<String, dynamic> json) => _$_Hotels(
      availabilityBodyHotel:
          (json['hotel'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_HotelsToJson(_$_Hotels instance) => <String, dynamic>{
      'hotel': instance.availabilityBodyHotel,
    };
