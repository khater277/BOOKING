// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_body.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreateBookingBodyAdapter extends TypeAdapter<CreateBookingBody> {
  @override
  final int typeId = 47;

  @override
  CreateBookingBody read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreateBookingBody();
  }

  @override
  void write(BinaryWriter writer, CreateBookingBody obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateBookingBodyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateBookingBody _$$_CreateBookingBodyFromJson(Map<String, dynamic> json) =>
    _$_CreateBookingBody(
      holder: json['holder'] == null
          ? null
          : Holder.fromJson(json['holder'] as Map<String, dynamic>),
      bookingRooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => BookingRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      clientReference: json['clientReference'] as String?,
      remark: json['remark'] as String?,
      tolerance: json['tolerance'] as int?,
    );

Map<String, dynamic> _$$_CreateBookingBodyToJson(
        _$_CreateBookingBody instance) =>
    <String, dynamic>{
      'holder': instance.holder,
      'rooms': instance.bookingRooms,
      'clientReference': instance.clientReference,
      'remark': instance.remark,
      'tolerance': instance.tolerance,
    };
