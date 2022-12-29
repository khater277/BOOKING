import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'hotel.dart';

part 'hotels_response_model.freezed.dart';
part 'hotels_response_model.g.dart';

@HiveType(typeId: 11)
@freezed
class HotelsResponseModel with _$HotelsResponseModel {
  factory HotelsResponseModel({
    @HiveField(0) int? from,
    @HiveField(1) int? to,
    @HiveField(2) int? total,
    List<Hotel>? hotels,
  }) = _HotelsResponseModel;

  factory HotelsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HotelsResponseModelFromJson(json);
}
