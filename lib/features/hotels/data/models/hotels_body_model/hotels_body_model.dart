import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotels_body_model.freezed.dart';
part 'hotels_body_model.g.dart';

@freezed
class HotelsBodyModel with _$HotelsBodyModel {
  const factory HotelsBodyModel({
    List<int>? codes,
    String? countryCode,
    int? from,
    int? to,
    String? language,
  }) = _HotelsBodyModel;

  factory HotelsBodyModel.fromJson(Map<String, dynamic> json) =>
      _$HotelsBodyModelFromJson(json);
}
