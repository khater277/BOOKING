// To parse this JSON data, do
//
//     final hotelsResponseModel = hotelsResponseModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'hotels_response_model.freezed.dart';
part 'hotels_response_model.g.dart';

@HiveType(typeId: 0)
@freezed
class HotelsResponseModel with _$HotelsResponseModel {
  const factory HotelsResponseModel({
    @HiveField(0) int? from,
    @HiveField(1) int? to,
    @HiveField(2) int? total,
    @HiveField(3) List<Hotel>? hotels,
  }) = _HotelsResponseModel;

  factory HotelsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HotelsResponseModelFromJson(json);
}

@HiveType(typeId: 5)
@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    @HiveField(0) int? code,
    @HiveField(1) City? name,
    @HiveField(2) City? description,
    @HiveField(3) String? countryCode,
    @HiveField(4) String? stateCode,
    @HiveField(5) String? destinationCode,
    @HiveField(6) Coordinates? coordinates,
    @HiveField(7) String? categoryCode,
    @HiveField(8) String? categoryGroupCode,
    @HiveField(9) Address? address,
    @HiveField(10) String? postalCode,
    @HiveField(11) City? city,
    @HiveField(12) String? email,
    @HiveField(13) String? license,
    @HiveField(14) List<Phone>? phones,
    @HiveField(15) List<Room>? rooms,
    @HiveField(16) List<Facility>? facilities,
    @HiveField(17) List<Image>? images,
    @HiveField(18) String? web,
    @HiveField(19) DateTime? lastUpdate,
    @HiveField(20) String? s2C,
    @HiveField(21) int? ranking,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}

@HiveType(typeId: 6)
@freezed
class Address with _$Address {
  const factory Address({
    @HiveField(0) String? content,
    @HiveField(1) String? street,
    @HiveField(2) String? number,
    @HiveField(3) String? floor,
    @HiveField(4) String? door,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@HiveType(typeId: 7)
@freezed
class City with _$City {
  const factory City({
    @HiveField(0) String? content,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@HiveType(typeId: 8)
@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    @HiveField(0) double? longitude,
    @HiveField(1) double? latitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@HiveType(typeId: 9)
@freezed
class Facility with _$Facility {
  const factory Facility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) int? order,
    @HiveField(3) bool? indYesOrNo,
    @HiveField(4) int? number,
    @HiveField(5) bool? voucher,
    @HiveField(6) bool? indLogic,
    @HiveField(7) bool? indFee,
    @HiveField(8) int? distance,
    @HiveField(9) String? timeFrom,
    @HiveField(10) String? timeTo,
    @HiveField(11) DateTime? dateTo,
    @HiveField(12) double? amount,
    @HiveField(13) String? currency,
    @HiveField(14) String? applicationType,
    @HiveField(15) int? ageFrom,
    @HiveField(16) int? ageTo,
    @HiveField(17) DateTime? dateFrom,
  }) = _Facility;

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);
}

@HiveType(typeId: 10)
@freezed
class Image with _$Image {
  const factory Image({
    @HiveField(0) String? imageTypeCode,
    @HiveField(1) String? path,
    @HiveField(2) int? order,
    @HiveField(3) int? visualOrder,
    @HiveField(4) String? roomCode,
    @HiveField(5) String? roomType,
    @HiveField(6) String? characteristicCode,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@HiveType(typeId: 11)
@freezed
class Phone with _$Phone {
  const factory Phone({
    @HiveField(0) String? phoneNumber,
    @HiveField(1) String? phoneType,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}

// enum PhoneType { PHONEBOOKING, PHONEHOTEL, PHONEMANAGEMENT, FAXNUMBER }

// final phoneTypeValues = EnumValues({
//   "FAXNUMBER": PhoneType.FAXNUMBER,
//   "PHONEBOOKING": PhoneType.PHONEBOOKING,
//   "PHONEHOTEL": PhoneType.PHONEHOTEL,
//   "PHONEMANAGEMENT": PhoneType.PHONEMANAGEMENT
// });

@HiveType(typeId: 12)
@freezed
class Room with _$Room {
  const factory Room({
    @HiveField(0) String? roomCode,
    @HiveField(1) bool? isParentRoom,
    @HiveField(2) int? minPax,
    @HiveField(3) int? maxPax,
    @HiveField(4) int? maxAdults,
    @HiveField(5) int? maxChildren,
    @HiveField(6) int? minAdults,
    @HiveField(7) String? roomType,
    @HiveField(8) String? characteristicCode,
    @HiveField(9) List<RoomFacility>? roomFacilities,
    @HiveField(10) List<RoomStay>? roomStays,
    @HiveField(11) String? pmsRoomCode,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@HiveType(typeId: 13)
@freezed
class RoomFacility with _$RoomFacility {
  const factory RoomFacility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) bool? indLogic,
    @HiveField(3) int? number,
    @HiveField(4) bool? voucher,
    @HiveField(5) bool? indFee,
    @HiveField(6) bool? indYesOrNo,
  }) = _RoomFacility;

  factory RoomFacility.fromJson(Map<String, dynamic> json) =>
      _$RoomFacilityFromJson(json);
}

@HiveType(typeId: 14)
@freezed
class RoomStay with _$RoomStay {
  const factory RoomStay({
    @HiveField(0) String? stayType,
    @HiveField(1) String? order,
    @HiveField(2) String? description,
    @HiveField(3) List<RoomStayFacility>? roomStayFacilities,
  }) = _RoomStay;

  factory RoomStay.fromJson(Map<String, dynamic> json) =>
      _$RoomStayFromJson(json);
}

@HiveType(typeId: 15)
@freezed
class RoomStayFacility with _$RoomStayFacility {
  const factory RoomStayFacility({
    @HiveField(0) int? facilityCode,
    @HiveField(1) int? facilityGroupCode,
    @HiveField(2) int? number,
  }) = _RoomStayFacility;

  factory RoomStayFacility.fromJson(Map<String, dynamic> json) =>
      _$RoomStayFacilityFromJson(json);
}

@HiveType(typeId: 16)
@freezed
class Terminal with _$Terminal {
  const factory Terminal({
    @HiveField(0) String? terminalCode,
    @HiveField(1) int? distance,
  }) = _Terminal;

  factory Terminal.fromJson(Map<String, dynamic> json) =>
      _$TerminalFromJson(json);
}

@HiveType(typeId: 17)
@freezed
class Wildcard with _$Wildcard {
  const factory Wildcard({
    @HiveField(0) String? roomType,
    @HiveField(1) String? roomCode,
    @HiveField(2) String? characteristicCode,
    @HiveField(3) City? hotelRoomDescription,
  }) = _Wildcard;

  factory Wildcard.fromJson(Map<String, dynamic> json) =>
      _$WildcardFromJson(json);
}

class EnumValues<T> {
  @HiveField(0)
  Map<String, T>? map;
  @HiveField(1)
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
