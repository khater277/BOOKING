// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_body_model.freezed.dart';
part 'register_body_model.g.dart';

@freezed
class RegisterBodyModel with _$RegisterBodyModel {
  const factory RegisterBodyModel({
    required String name,
    required String email,
    required String password,
    @JsonKey(name: "password_confirmation")
        required String passwordConfirmation,
  }) = _RegisterBodyModel;

  factory RegisterBodyModel.fromJson(Map<String, Object?> json) =>
      _$RegisterBodyModelFromJson(json);
}
