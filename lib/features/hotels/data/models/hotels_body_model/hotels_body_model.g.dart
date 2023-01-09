// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'hotels_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelsBodyModel _$$_HotelsBodyModelFromJson(Map<String, dynamic> json) =>
    _$_HotelsBodyModel(
      codes: (json['codes'] as List<dynamic>?)?.map((e) => e as int).toList(),
      countryCode: json['countryCode'] as String?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_HotelsBodyModelToJson(_$_HotelsBodyModel instance) =>
    <String, dynamic>{
      'codes': instance.codes,
      'countryCode': instance.countryCode,
      'from': instance.from,
      'to': instance.to,
      'language': instance.language,
    };
