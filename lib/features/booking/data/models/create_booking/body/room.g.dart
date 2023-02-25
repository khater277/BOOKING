// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingRoomAdapter extends TypeAdapter<BookingRoom> {
  @override
  final int typeId = 50;

  @override
  BookingRoom read(BinaryReader reader) {
    return BookingRoom();
  }

  @override
  void write(BinaryWriter writer, BookingRoom obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingRoom _$$_BookingRoomFromJson(Map<String, dynamic> json) =>
    _$_BookingRoom(
      rateKey: json['rateKey'] as String?,
      paxes: (json['paxes'] as List<dynamic>?)
          ?.map((e) => Pax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookingRoomToJson(_$_BookingRoom instance) =>
    <String, dynamic>{
      'rateKey': instance.rateKey,
      'paxes': instance.paxes,
    };
