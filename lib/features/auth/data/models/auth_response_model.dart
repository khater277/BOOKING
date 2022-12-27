// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
@HiveType(typeId: 1)
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    @HiveField(0) Status? status,
    @HiveField(1) @JsonKey(name: "data") AuthData? authData,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class AuthData with _$AuthData {
  const factory AuthData({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? emailVerifiedAt,
    @HiveField(4) String? apiToken,
    @HiveField(5) String? image,
    @HiveField(6) DateTime? createdAt,
    @HiveField(7) DateTime? updatedAt,
    @HiveField(8) String? googleId,
    @HiveField(9) String? provider,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class Status with _$Status {
  const factory Status({
    @HiveField(0) String? type,
    @HiveField(1) Title? title,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
@HiveType(typeId: 4)
class Title with _$Title {
  const factory Title({
    @HiveField(0) String? ar,
    @HiveField(1) String? en,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
