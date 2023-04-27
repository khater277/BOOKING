// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelsParamsModel _$$_HotelsParamsModelFromJson(Map<String, dynamic> json) =>
    _$_HotelsParamsModel(
      codes: (json['codes'] as List<dynamic>?)?.map((e) => e as int).toList(),
      countryCode: json['countryCode'] as String?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_HotelsParamsModelToJson(
        _$_HotelsParamsModel instance) =>
    <String, dynamic>{
      'codes': instance.codes,
      'countryCode': instance.countryCode,
      'from': instance.from,
      'to': instance.to,
      'language': instance.language,
    };
