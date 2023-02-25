// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'holder.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HolderAdapter extends TypeAdapter<Holder> {
  @override
  final int typeId = 48;

  @override
  Holder read(BinaryReader reader) {
    return Holder();
  }

  @override
  void write(BinaryWriter writer, Holder obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HolderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Holder _$$_HolderFromJson(Map<String, dynamic> json) => _$_Holder(
      name: json['name'] as String?,
      surname: json['surname'] as String?,
    );

Map<String, dynamic> _$$_HolderToJson(_$_Holder instance) => <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
    };
