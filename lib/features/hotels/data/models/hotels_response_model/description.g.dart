// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DescriptionAdapter extends TypeAdapter<Description> {
  @override
  final int typeId = 8;

  @override
  Description read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Description(
      content: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Description obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Description _$$_DescriptionFromJson(Map<String, dynamic> json) =>
    _$_Description(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
