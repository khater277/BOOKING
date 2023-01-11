// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'auth_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthBody _$$_AuthBodyFromJson(Map<String, dynamic> json) => _$_AuthBody(
      name: json['name'] as String?,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_AuthBodyToJson(_$_AuthBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
