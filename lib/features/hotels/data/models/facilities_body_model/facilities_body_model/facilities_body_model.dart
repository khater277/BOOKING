import 'package:freezed_annotation/freezed_annotation.dart';

part 'facilities_body_model.freezed.dart';
part 'facilities_body_model.g.dart';

@freezed
class FacilitiesBodyModel with _$FacilitiesBodyModel {
  factory FacilitiesBodyModel({
    String? fields,
    String? from,
    String? to,
  }) = _FacilitiesBodyModel;

  factory FacilitiesBodyModel.fromJson(Map<String, dynamic> json) =>
      _$FacilitiesBodyModelFromJson(json);
}
