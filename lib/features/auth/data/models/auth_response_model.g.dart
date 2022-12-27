// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'auth_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthResponseModelAdapter extends TypeAdapter<AuthResponseModel> {
  @override
  final int typeId = 1;

  @override
  AuthResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthResponseModel(
      status: fields[0] as Status?,
      authData: fields[1] as AuthData?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthResponseModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.authData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthDataAdapter extends TypeAdapter<AuthData> {
  @override
  final int typeId = 2;

  @override
  AuthData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthData(
      id: fields[0] as int?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      emailVerifiedAt: fields[3] as String?,
      apiToken: fields[4] as String?,
      image: fields[5] as String?,
      createdAt: fields[6] as DateTime?,
      updatedAt: fields[7] as DateTime?,
      googleId: fields[8] as String?,
      provider: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.emailVerifiedAt)
      ..writeByte(4)
      ..write(obj.apiToken)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.googleId)
      ..writeByte(9)
      ..write(obj.provider);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatusAdapter extends TypeAdapter<Status> {
  @override
  final int typeId = 3;

  @override
  Status read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Status(
      type: fields[0] as String?,
      title: fields[1] as Title?,
    );
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TitleAdapter extends TypeAdapter<Title> {
  @override
  final int typeId = 4;

  @override
  Title read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Title(
      ar: fields[0] as String?,
      en: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Title obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ar)
      ..writeByte(1)
      ..write(obj.en);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponseModel _$$_AuthResponseModelFromJson(Map<String, dynamic> json) =>
    _$_AuthResponseModel(
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      authData: json['data'] == null
          ? null
          : AuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseModelToJson(
        _$_AuthResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.authData,
    };

_$_AuthData _$$_AuthDataFromJson(Map<String, dynamic> json) => _$_AuthData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'] as String?,
      apiToken: json['apiToken'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      googleId: json['googleId'] as String?,
      provider: json['provider'] as String?,
    );

Map<String, dynamic> _$$_AuthDataToJson(_$_AuthData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'apiToken': instance.apiToken,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'googleId': instance.googleId,
      'provider': instance.provider,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      type: json['type'] as String?,
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

_$_Title _$$_TitleFromJson(Map<String, dynamic> json) => _$_Title(
      ar: json['ar'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_TitleToJson(_$_Title instance) => <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };
