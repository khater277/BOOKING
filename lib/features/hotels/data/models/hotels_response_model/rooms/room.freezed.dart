// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  @HiveField(0)
  String? get roomCode => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isParentRoom => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get minPax => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get maxPax => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get maxAdults => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get maxChildren => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get minAdults => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get roomType => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get characteristicCode => throw _privateConstructorUsedError;
  @HiveField(9)
  List<RoomFacility>? get roomFacilities => throw _privateConstructorUsedError;
  @HiveField(10)
  List<RoomStay>? get roomStays => throw _privateConstructorUsedError;
  @JsonKey(name: 'PMSRoomCode')
  String? get pmsRoomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? roomCode,
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
      @JsonKey(name: 'PMSRoomCode') String? pmsRoomCode});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_value.copyWith(
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: isParentRoom == freezed
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: minPax == freezed
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: maxPax == freezed
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: maxAdults == freezed
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: maxChildren == freezed
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: minAdults == freezed
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: roomFacilities == freezed
          ? _value.roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: roomStays == freezed
          ? _value.roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: pmsRoomCode == freezed
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? roomCode,
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
      @JsonKey(name: 'PMSRoomCode') String? pmsRoomCode});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, (v) => _then(v as _$_Room));

  @override
  _$_Room get _value => super._value as _$_Room;

  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_$_Room(
      roomCode: roomCode == freezed
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: isParentRoom == freezed
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: minPax == freezed
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: maxPax == freezed
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: maxAdults == freezed
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: maxChildren == freezed
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: minAdults == freezed
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: characteristicCode == freezed
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: roomFacilities == freezed
          ? _value._roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: roomStays == freezed
          ? _value._roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: pmsRoomCode == freezed
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  _$_Room(
      {@HiveField(0) this.roomCode,
      @HiveField(1) this.isParentRoom,
      @HiveField(2) this.minPax,
      @HiveField(3) this.maxPax,
      @HiveField(4) this.maxAdults,
      @HiveField(5) this.maxChildren,
      @HiveField(6) this.minAdults,
      @HiveField(7) this.roomType,
      @HiveField(8) this.characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') this.pmsRoomCode})
      : _roomFacilities = roomFacilities,
        _roomStays = roomStays;

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  @HiveField(0)
  final String? roomCode;
  @override
  @HiveField(1)
  final bool? isParentRoom;
  @override
  @HiveField(2)
  final int? minPax;
  @override
  @HiveField(3)
  final int? maxPax;
  @override
  @HiveField(4)
  final int? maxAdults;
  @override
  @HiveField(5)
  final int? maxChildren;
  @override
  @HiveField(6)
  final int? minAdults;
  @override
  @HiveField(7)
  final String? roomType;
  @override
  @HiveField(8)
  final String? characteristicCode;
  final List<RoomFacility>? _roomFacilities;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities {
    final value = _roomFacilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RoomStay>? _roomStays;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays {
    final value = _roomStays;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'PMSRoomCode')
  final String? pmsRoomCode;

  @override
  String toString() {
    return 'Room(roomCode: $roomCode, isParentRoom: $isParentRoom, minPax: $minPax, maxPax: $maxPax, maxAdults: $maxAdults, maxChildren: $maxChildren, minAdults: $minAdults, roomType: $roomType, characteristicCode: $characteristicCode, roomFacilities: $roomFacilities, roomStays: $roomStays, pmsRoomCode: $pmsRoomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            const DeepCollectionEquality().equals(other.roomCode, roomCode) &&
            const DeepCollectionEquality()
                .equals(other.isParentRoom, isParentRoom) &&
            const DeepCollectionEquality().equals(other.minPax, minPax) &&
            const DeepCollectionEquality().equals(other.maxPax, maxPax) &&
            const DeepCollectionEquality().equals(other.maxAdults, maxAdults) &&
            const DeepCollectionEquality()
                .equals(other.maxChildren, maxChildren) &&
            const DeepCollectionEquality().equals(other.minAdults, minAdults) &&
            const DeepCollectionEquality().equals(other.roomType, roomType) &&
            const DeepCollectionEquality()
                .equals(other.characteristicCode, characteristicCode) &&
            const DeepCollectionEquality()
                .equals(other._roomFacilities, _roomFacilities) &&
            const DeepCollectionEquality()
                .equals(other._roomStays, _roomStays) &&
            const DeepCollectionEquality()
                .equals(other.pmsRoomCode, pmsRoomCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomCode),
      const DeepCollectionEquality().hash(isParentRoom),
      const DeepCollectionEquality().hash(minPax),
      const DeepCollectionEquality().hash(maxPax),
      const DeepCollectionEquality().hash(maxAdults),
      const DeepCollectionEquality().hash(maxChildren),
      const DeepCollectionEquality().hash(minAdults),
      const DeepCollectionEquality().hash(roomType),
      const DeepCollectionEquality().hash(characteristicCode),
      const DeepCollectionEquality().hash(_roomFacilities),
      const DeepCollectionEquality().hash(_roomStays),
      const DeepCollectionEquality().hash(pmsRoomCode));

  @JsonKey(ignore: true)
  @override
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  factory _Room(
      {@HiveField(0) final String? roomCode,
      @HiveField(1) final bool? isParentRoom,
      @HiveField(2) final int? minPax,
      @HiveField(3) final int? maxPax,
      @HiveField(4) final int? maxAdults,
      @HiveField(5) final int? maxChildren,
      @HiveField(6) final int? minAdults,
      @HiveField(7) final String? roomType,
      @HiveField(8) final String? characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') final String? pmsRoomCode}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  @HiveField(0)
  String? get roomCode;
  @override
  @HiveField(1)
  bool? get isParentRoom;
  @override
  @HiveField(2)
  int? get minPax;
  @override
  @HiveField(3)
  int? get maxPax;
  @override
  @HiveField(4)
  int? get maxAdults;
  @override
  @HiveField(5)
  int? get maxChildren;
  @override
  @HiveField(6)
  int? get minAdults;
  @override
  @HiveField(7)
  String? get roomType;
  @override
  @HiveField(8)
  String? get characteristicCode;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays;
  @override
  @JsonKey(name: 'PMSRoomCode')
  String? get pmsRoomCode;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
