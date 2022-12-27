import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_body_model.freezed.dart';
part 'login_body_model.g.dart';

@freezed
class LoginBodyModel with _$LoginBodyModel {
  const factory LoginBodyModel({
    required String email,
    required String password,
  }) = _LoginBodyModel;

  factory LoginBodyModel.fromJson(Map<String, Object?> json) =>
      _$LoginBodyModelFromJson(json);
}
