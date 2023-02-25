// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'create_booking_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreateBookingResponseAdapter extends TypeAdapter<CreateBookingResponse> {
  @override
  final int typeId = 54;

  @override
  CreateBookingResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreateBookingResponse(
      auditData: fields[0] as AuditData?,
      booking: fields[1] as Booking?,
    );
  }

  @override
  void write(BinaryWriter writer, CreateBookingResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.auditData)
      ..writeByte(1)
      ..write(obj.booking);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateBookingResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateBookingResponse _$$_CreateBookingResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateBookingResponse(
      auditData: json['auditData'] == null
          ? null
          : AuditData.fromJson(json['auditData'] as Map<String, dynamic>),
      booking: json['booking'] == null
          ? null
          : Booking.fromJson(json['booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateBookingResponseToJson(
        _$_CreateBookingResponse instance) =>
    <String, dynamic>{
      'auditData': instance.auditData,
      'booking': instance.booking,
    };
