// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'check_rate_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckRateResponseAdapter extends TypeAdapter<CheckRateResponse> {
  @override
  final int typeId = 40;

  @override
  CheckRateResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckRateResponse(
      auditData: fields[0] as AuditData?,
      rateHotel: fields[1] as RateHotel?,
    );
  }

  @override
  void write(BinaryWriter writer, CheckRateResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.auditData)
      ..writeByte(1)
      ..write(obj.rateHotel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckRateResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckRateResponse _$$_CheckRateResponseFromJson(Map<String, dynamic> json) =>
    _$_CheckRateResponse(
      auditData: json['auditData'] == null
          ? null
          : AuditData.fromJson(json['auditData'] as Map<String, dynamic>),
      rateHotel: json['hotel'] == null
          ? null
          : RateHotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheckRateResponseToJson(
        _$_CheckRateResponse instance) =>
    <String, dynamic>{
      'auditData': instance.auditData,
      'hotel': instance.rateHotel,
    };
