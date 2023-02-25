// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'supplier.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SupplierAdapter extends TypeAdapter<Supplier> {
  @override
  final int typeId = 62;

  @override
  Supplier read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Supplier(
      name: fields[0] as String?,
      vatNumber: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Supplier obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.vatNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Supplier _$$_SupplierFromJson(Map<String, dynamic> json) => _$_Supplier(
      name: json['name'] as String?,
      vatNumber: json['vatNumber'] as String?,
    );

Map<String, dynamic> _$$_SupplierToJson(_$_Supplier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vatNumber': instance.vatNumber,
    };
