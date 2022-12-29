import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'address.dart';
import 'city.dart';
import 'coordinates.dart';
import 'description.dart';
import 'facility.dart';
import 'image.dart';
import 'name.dart';
import 'phone.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@HiveType(typeId: 10)
@freezed
class Hotel with _$Hotel {
  factory Hotel({
    @HiveField(0) int? code,
    @HiveField(1) Name? name,
    @HiveField(2) Description? description,
    @HiveField(3) String? countryCode,
    @HiveField(4) Coordinates? coordinates,
    @HiveField(5) Address? address,
    @HiveField(6) City? city,
    @HiveField(7) String? email,
    @HiveField(8) List<Phone>? phones,
    @HiveField(9) List<Facility>? facilities,
    @HiveField(10) List<Image>? images,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
