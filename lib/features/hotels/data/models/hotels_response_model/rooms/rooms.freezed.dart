// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$Rooms {
  @HiveField(0)
  List<Room>? get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Room>? rooms});
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res> implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

  final Rooms _value;
  // ignore: unused_field
  final $Res Function(Rooms) _then;

  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomsCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$_RoomsCopyWith(_$_Rooms value, $Res Function(_$_Rooms) then) =
      __$$_RoomsCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Room>? rooms});
}

/// @nodoc
class __$$_RoomsCopyWithImpl<$Res> extends _$RoomsCopyWithImpl<$Res>
    implements _$$_RoomsCopyWith<$Res> {
  __$$_RoomsCopyWithImpl(_$_Rooms _value, $Res Function(_$_Rooms) _then)
      : super(_value, (v) => _then(v as _$_Rooms));

  @override
  _$_Rooms get _value => super._value as _$_Rooms;

  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_$_Rooms(
      rooms: rooms == freezed
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rooms implements _Rooms {
  _$_Rooms({@HiveField(0) final List<Room>? rooms}) : _rooms = rooms;

  factory _$_Rooms.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsFromJson(json);

  final List<Room>? _rooms;
  @override
  @HiveField(0)
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Rooms(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rooms &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      __$$_RoomsCopyWithImpl<_$_Rooms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsToJson(
      this,
    );
  }
}

abstract class _Rooms implements Rooms {
  factory _Rooms({@HiveField(0) final List<Room>? rooms}) = _$_Rooms;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$_Rooms.fromJson;

  @override
  @HiveField(0)
  List<Room>? get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      throw _privateConstructorUsedError;
}
