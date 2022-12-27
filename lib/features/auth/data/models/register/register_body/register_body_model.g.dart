// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'register_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterBodyModel _$$_RegisterBodyModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterBodyModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$_RegisterBodyModelToJson(
        _$_RegisterBodyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
