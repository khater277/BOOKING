// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelsResponseModelAdapter extends TypeAdapter<HotelsResponseModel> {
  @override
  final int typeId = 0;

  @override
  HotelsResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HotelsResponseModel(
      from: fields[0] as int?,
      to: fields[1] as int?,
      total: fields[2] as int?,
      hotels: (fields[3] as List?)?.cast<Hotel>(),
    );
  }

  @override
  void write(BinaryWriter writer, HotelsResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.from)
      ..writeByte(1)
      ..write(obj.to)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.hotels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelsResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HotelAdapter extends TypeAdapter<Hotel> {
  @override
  final int typeId = 5;

  @override
  Hotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hotel(
      code: fields[0] as int?,
      name: fields[1] as City?,
      description: fields[2] as City?,
      countryCode: fields[3] as String?,
      stateCode: fields[4] as String?,
      destinationCode: fields[5] as String?,
      coordinates: fields[6] as Coordinates?,
      categoryCode: fields[7] as String?,
      categoryGroupCode: fields[8] as String?,
      address: fields[9] as Address?,
      postalCode: fields[10] as String?,
      city: fields[11] as City?,
      email: fields[12] as String?,
      license: fields[13] as String?,
      phones: (fields[14] as List?)?.cast<Phone>(),
      rooms: (fields[15] as List?)?.cast<Room>(),
      facilities: (fields[16] as List?)?.cast<Facility>(),
      images: (fields[17] as List?)?.cast<Image>(),
      web: fields[18] as String?,
      lastUpdate: fields[19] as DateTime?,
      s2C: fields[20] as String?,
      ranking: fields[21] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Hotel obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.countryCode)
      ..writeByte(4)
      ..write(obj.stateCode)
      ..writeByte(5)
      ..write(obj.destinationCode)
      ..writeByte(6)
      ..write(obj.coordinates)
      ..writeByte(7)
      ..write(obj.categoryCode)
      ..writeByte(8)
      ..write(obj.categoryGroupCode)
      ..writeByte(9)
      ..write(obj.address)
      ..writeByte(10)
      ..write(obj.postalCode)
      ..writeByte(11)
      ..write(obj.city)
      ..writeByte(12)
      ..write(obj.email)
      ..writeByte(13)
      ..write(obj.license)
      ..writeByte(14)
      ..write(obj.phones)
      ..writeByte(15)
      ..write(obj.rooms)
      ..writeByte(16)
      ..write(obj.facilities)
      ..writeByte(17)
      ..write(obj.images)
      ..writeByte(18)
      ..write(obj.web)
      ..writeByte(19)
      ..write(obj.lastUpdate)
      ..writeByte(20)
      ..write(obj.s2C)
      ..writeByte(21)
      ..write(obj.ranking);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddressAdapter extends TypeAdapter<Address> {
  @override
  final int typeId = 6;

  @override
  Address read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Address(
      content: fields[0] as String?,
      street: fields[1] as String?,
      number: fields[2] as String?,
      floor: fields[3] as String?,
      door: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.content)
      ..writeByte(1)
      ..write(obj.street)
      ..writeByte(2)
      ..write(obj.number)
      ..writeByte(3)
      ..write(obj.floor)
      ..writeByte(4)
      ..write(obj.door);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CityAdapter extends TypeAdapter<City> {
  @override
  final int typeId = 7;

  @override
  City read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return City(
      content: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, City obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoordinatesAdapter extends TypeAdapter<Coordinates> {
  @override
  final int typeId = 8;

  @override
  Coordinates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coordinates(
      longitude: fields[0] as double?,
      latitude: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Coordinates obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.longitude)
      ..writeByte(1)
      ..write(obj.latitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FacilityAdapter extends TypeAdapter<Facility> {
  @override
  final int typeId = 9;

  @override
  Facility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Facility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      order: fields[2] as int?,
      indYesOrNo: fields[3] as bool?,
      number: fields[4] as int?,
      voucher: fields[5] as bool?,
      indLogic: fields[6] as bool?,
      indFee: fields[7] as bool?,
      distance: fields[8] as int?,
      timeFrom: fields[9] as String?,
      timeTo: fields[10] as String?,
      dateTo: fields[11] as DateTime?,
      amount: fields[12] as double?,
      currency: fields[13] as String?,
      applicationType: fields[14] as String?,
      ageFrom: fields[15] as int?,
      ageTo: fields[16] as int?,
      dateFrom: fields[17] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Facility obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.order)
      ..writeByte(3)
      ..write(obj.indYesOrNo)
      ..writeByte(4)
      ..write(obj.number)
      ..writeByte(5)
      ..write(obj.voucher)
      ..writeByte(6)
      ..write(obj.indLogic)
      ..writeByte(7)
      ..write(obj.indFee)
      ..writeByte(8)
      ..write(obj.distance)
      ..writeByte(9)
      ..write(obj.timeFrom)
      ..writeByte(10)
      ..write(obj.timeTo)
      ..writeByte(11)
      ..write(obj.dateTo)
      ..writeByte(12)
      ..write(obj.amount)
      ..writeByte(13)
      ..write(obj.currency)
      ..writeByte(14)
      ..write(obj.applicationType)
      ..writeByte(15)
      ..write(obj.ageFrom)
      ..writeByte(16)
      ..write(obj.ageTo)
      ..writeByte(17)
      ..write(obj.dateFrom);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageAdapter extends TypeAdapter<Image> {
  @override
  final int typeId = 10;

  @override
  Image read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Image(
      imageTypeCode: fields[0] as String?,
      path: fields[1] as String?,
      order: fields[2] as int?,
      visualOrder: fields[3] as int?,
      roomCode: fields[4] as String?,
      roomType: fields[5] as String?,
      characteristicCode: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Image obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.imageTypeCode)
      ..writeByte(1)
      ..write(obj.path)
      ..writeByte(2)
      ..write(obj.order)
      ..writeByte(3)
      ..write(obj.visualOrder)
      ..writeByte(4)
      ..write(obj.roomCode)
      ..writeByte(5)
      ..write(obj.roomType)
      ..writeByte(6)
      ..write(obj.characteristicCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PhoneAdapter extends TypeAdapter<Phone> {
  @override
  final int typeId = 11;

  @override
  Phone read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Phone(
      phoneNumber: fields[0] as String?,
      phoneType: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Phone obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.phoneNumber)
      ..writeByte(1)
      ..write(obj.phoneType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomAdapter extends TypeAdapter<Room> {
  @override
  final int typeId = 12;

  @override
  Room read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Room(
      roomCode: fields[0] as String?,
      isParentRoom: fields[1] as bool?,
      minPax: fields[2] as int?,
      maxPax: fields[3] as int?,
      maxAdults: fields[4] as int?,
      maxChildren: fields[5] as int?,
      minAdults: fields[6] as int?,
      roomType: fields[7] as String?,
      characteristicCode: fields[8] as String?,
      roomFacilities: (fields[9] as List?)?.cast<RoomFacility>(),
      roomStays: (fields[10] as List?)?.cast<RoomStay>(),
      pmsRoomCode: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Room obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.roomCode)
      ..writeByte(1)
      ..write(obj.isParentRoom)
      ..writeByte(2)
      ..write(obj.minPax)
      ..writeByte(3)
      ..write(obj.maxPax)
      ..writeByte(4)
      ..write(obj.maxAdults)
      ..writeByte(5)
      ..write(obj.maxChildren)
      ..writeByte(6)
      ..write(obj.minAdults)
      ..writeByte(7)
      ..write(obj.roomType)
      ..writeByte(8)
      ..write(obj.characteristicCode)
      ..writeByte(9)
      ..write(obj.roomFacilities)
      ..writeByte(10)
      ..write(obj.roomStays)
      ..writeByte(11)
      ..write(obj.pmsRoomCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomFacilityAdapter extends TypeAdapter<RoomFacility> {
  @override
  final int typeId = 13;

  @override
  RoomFacility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomFacility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      indLogic: fields[2] as bool?,
      number: fields[3] as int?,
      voucher: fields[4] as bool?,
      indFee: fields[5] as bool?,
      indYesOrNo: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, RoomFacility obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.indLogic)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.voucher)
      ..writeByte(5)
      ..write(obj.indFee)
      ..writeByte(6)
      ..write(obj.indYesOrNo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomFacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomStayAdapter extends TypeAdapter<RoomStay> {
  @override
  final int typeId = 14;

  @override
  RoomStay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomStay(
      stayType: fields[0] as String?,
      order: fields[1] as String?,
      description: fields[2] as String?,
      roomStayFacilities: (fields[3] as List?)?.cast<RoomStayFacility>(),
    );
  }

  @override
  void write(BinaryWriter writer, RoomStay obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.stayType)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.roomStayFacilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomStayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomStayFacilityAdapter extends TypeAdapter<RoomStayFacility> {
  @override
  final int typeId = 15;

  @override
  RoomStayFacility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomStayFacility(
      facilityCode: fields[0] as int?,
      facilityGroupCode: fields[1] as int?,
      number: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RoomStayFacility obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.facilityCode)
      ..writeByte(1)
      ..write(obj.facilityGroupCode)
      ..writeByte(2)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomStayFacilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TerminalAdapter extends TypeAdapter<Terminal> {
  @override
  final int typeId = 16;

  @override
  Terminal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Terminal(
      terminalCode: fields[0] as String?,
      distance: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Terminal obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.terminalCode)
      ..writeByte(1)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TerminalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WildcardAdapter extends TypeAdapter<Wildcard> {
  @override
  final int typeId = 17;

  @override
  Wildcard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Wildcard(
      roomType: fields[0] as String?,
      roomCode: fields[1] as String?,
      characteristicCode: fields[2] as String?,
      hotelRoomDescription: fields[3] as City?,
    );
  }

  @override
  void write(BinaryWriter writer, Wildcard obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.roomType)
      ..writeByte(1)
      ..write(obj.roomCode)
      ..writeByte(2)
      ..write(obj.characteristicCode)
      ..writeByte(3)
      ..write(obj.hotelRoomDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WildcardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelsResponseModel _$$_HotelsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_HotelsResponseModel(
      from: json['from'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
      hotels: (json['hotels'] as List<dynamic>?)
          ?.map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HotelsResponseModelToJson(
        _$_HotelsResponseModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'total': instance.total,
      'hotels': instance.hotels,
    };

_$_Hotel _$$_HotelFromJson(Map<String, dynamic> json) => _$_Hotel(
      code: json['code'] as int?,
      name: json['name'] == null
          ? null
          : City.fromJson(json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : City.fromJson(json['description'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
      stateCode: json['stateCode'] as String?,
      destinationCode: json['destinationCode'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      categoryCode: json['categoryCode'] as String?,
      categoryGroupCode: json['categoryGroupCode'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      email: json['email'] as String?,
      license: json['license'] as String?,
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
      facilities: (json['facilities'] as List<dynamic>?)
          ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      web: json['web'] as String?,
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      s2C: json['s2C'] as String?,
      ranking: json['ranking'] as int?,
    );

Map<String, dynamic> _$$_HotelToJson(_$_Hotel instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'countryCode': instance.countryCode,
      'stateCode': instance.stateCode,
      'destinationCode': instance.destinationCode,
      'coordinates': instance.coordinates,
      'categoryCode': instance.categoryCode,
      'categoryGroupCode': instance.categoryGroupCode,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'email': instance.email,
      'license': instance.license,
      'phones': instance.phones,
      'rooms': instance.rooms,
      'facilities': instance.facilities,
      'images': instance.images,
      'web': instance.web,
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      's2C': instance.s2C,
      'ranking': instance.ranking,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      content: json['content'] as String?,
      street: json['street'] as String?,
      number: json['number'] as String?,
      floor: json['floor'] as String?,
      door: json['door'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'content': instance.content,
      'street': instance.street,
      'number': instance.number,
      'floor': instance.floor,
      'door': instance.door,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'content': instance.content,
    };

_$_Coordinates _$$_CoordinatesFromJson(Map<String, dynamic> json) =>
    _$_Coordinates(
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$_Facility _$$_FacilityFromJson(Map<String, dynamic> json) => _$_Facility(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      order: json['order'] as int?,
      indYesOrNo: json['indYesOrNo'] as bool?,
      number: json['number'] as int?,
      voucher: json['voucher'] as bool?,
      indLogic: json['indLogic'] as bool?,
      indFee: json['indFee'] as bool?,
      distance: json['distance'] as int?,
      timeFrom: json['timeFrom'] as String?,
      timeTo: json['timeTo'] as String?,
      dateTo: json['dateTo'] == null
          ? null
          : DateTime.parse(json['dateTo'] as String),
      amount: (json['amount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      applicationType: json['applicationType'] as String?,
      ageFrom: json['ageFrom'] as int?,
      ageTo: json['ageTo'] as int?,
      dateFrom: json['dateFrom'] == null
          ? null
          : DateTime.parse(json['dateFrom'] as String),
    );

Map<String, dynamic> _$$_FacilityToJson(_$_Facility instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'order': instance.order,
      'indYesOrNo': instance.indYesOrNo,
      'number': instance.number,
      'voucher': instance.voucher,
      'indLogic': instance.indLogic,
      'indFee': instance.indFee,
      'distance': instance.distance,
      'timeFrom': instance.timeFrom,
      'timeTo': instance.timeTo,
      'dateTo': instance.dateTo?.toIso8601String(),
      'amount': instance.amount,
      'currency': instance.currency,
      'applicationType': instance.applicationType,
      'ageFrom': instance.ageFrom,
      'ageTo': instance.ageTo,
      'dateFrom': instance.dateFrom?.toIso8601String(),
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      imageTypeCode: json['imageTypeCode'] as String?,
      path: json['path'] as String?,
      order: json['order'] as int?,
      visualOrder: json['visualOrder'] as int?,
      roomCode: json['roomCode'] as String?,
      roomType: json['roomType'] as String?,
      characteristicCode: json['characteristicCode'] as String?,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'imageTypeCode': instance.imageTypeCode,
      'path': instance.path,
      'order': instance.order,
      'visualOrder': instance.visualOrder,
      'roomCode': instance.roomCode,
      'roomType': instance.roomType,
      'characteristicCode': instance.characteristicCode,
    };

_$_Phone _$$_PhoneFromJson(Map<String, dynamic> json) => _$_Phone(
      phoneNumber: json['phoneNumber'] as String?,
      phoneType: json['phoneType'] as String?,
    );

Map<String, dynamic> _$$_PhoneToJson(_$_Phone instance) => <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'phoneType': instance.phoneType,
    };

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      roomCode: json['roomCode'] as String?,
      isParentRoom: json['isParentRoom'] as bool?,
      minPax: json['minPax'] as int?,
      maxPax: json['maxPax'] as int?,
      maxAdults: json['maxAdults'] as int?,
      maxChildren: json['maxChildren'] as int?,
      minAdults: json['minAdults'] as int?,
      roomType: json['roomType'] as String?,
      characteristicCode: json['characteristicCode'] as String?,
      roomFacilities: (json['roomFacilities'] as List<dynamic>?)
          ?.map((e) => RoomFacility.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomStays: (json['roomStays'] as List<dynamic>?)
          ?.map((e) => RoomStay.fromJson(e as Map<String, dynamic>))
          .toList(),
      pmsRoomCode: json['pmsRoomCode'] as String?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'roomCode': instance.roomCode,
      'isParentRoom': instance.isParentRoom,
      'minPax': instance.minPax,
      'maxPax': instance.maxPax,
      'maxAdults': instance.maxAdults,
      'maxChildren': instance.maxChildren,
      'minAdults': instance.minAdults,
      'roomType': instance.roomType,
      'characteristicCode': instance.characteristicCode,
      'roomFacilities': instance.roomFacilities,
      'roomStays': instance.roomStays,
      'pmsRoomCode': instance.pmsRoomCode,
    };

_$_RoomFacility _$$_RoomFacilityFromJson(Map<String, dynamic> json) =>
    _$_RoomFacility(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      indLogic: json['indLogic'] as bool?,
      number: json['number'] as int?,
      voucher: json['voucher'] as bool?,
      indFee: json['indFee'] as bool?,
      indYesOrNo: json['indYesOrNo'] as bool?,
    );

Map<String, dynamic> _$$_RoomFacilityToJson(_$_RoomFacility instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'indLogic': instance.indLogic,
      'number': instance.number,
      'voucher': instance.voucher,
      'indFee': instance.indFee,
      'indYesOrNo': instance.indYesOrNo,
    };

_$_RoomStay _$$_RoomStayFromJson(Map<String, dynamic> json) => _$_RoomStay(
      stayType: json['stayType'] as String?,
      order: json['order'] as String?,
      description: json['description'] as String?,
      roomStayFacilities: (json['roomStayFacilities'] as List<dynamic>?)
          ?.map((e) => RoomStayFacility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomStayToJson(_$_RoomStay instance) =>
    <String, dynamic>{
      'stayType': instance.stayType,
      'order': instance.order,
      'description': instance.description,
      'roomStayFacilities': instance.roomStayFacilities,
    };

_$_RoomStayFacility _$$_RoomStayFacilityFromJson(Map<String, dynamic> json) =>
    _$_RoomStayFacility(
      facilityCode: json['facilityCode'] as int?,
      facilityGroupCode: json['facilityGroupCode'] as int?,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$_RoomStayFacilityToJson(_$_RoomStayFacility instance) =>
    <String, dynamic>{
      'facilityCode': instance.facilityCode,
      'facilityGroupCode': instance.facilityGroupCode,
      'number': instance.number,
    };

_$_Terminal _$$_TerminalFromJson(Map<String, dynamic> json) => _$_Terminal(
      terminalCode: json['terminalCode'] as String?,
      distance: json['distance'] as int?,
    );

Map<String, dynamic> _$$_TerminalToJson(_$_Terminal instance) =>
    <String, dynamic>{
      'terminalCode': instance.terminalCode,
      'distance': instance.distance,
    };

_$_Wildcard _$$_WildcardFromJson(Map<String, dynamic> json) => _$_Wildcard(
      roomType: json['roomType'] as String?,
      roomCode: json['roomCode'] as String?,
      characteristicCode: json['characteristicCode'] as String?,
      hotelRoomDescription: json['hotelRoomDescription'] == null
          ? null
          : City.fromJson(json['hotelRoomDescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WildcardToJson(_$_Wildcard instance) =>
    <String, dynamic>{
      'roomType': instance.roomType,
      'roomCode': instance.roomCode,
      'characteristicCode': instance.characteristicCode,
      'hotelRoomDescription': instance.hotelRoomDescription,
    };
