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

BookingRoom _$BookingRoomFromJson(Map<String, dynamic> json) {
  return _BookingRoom.fromJson(json);
}

/// @nodoc
mixin _$BookingRoom {
  String? get rateKey => throw _privateConstructorUsedError;
  List<Pax>? get paxes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRoomCopyWith<BookingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRoomCopyWith<$Res> {
  factory $BookingRoomCopyWith(
          BookingRoom value, $Res Function(BookingRoom) then) =
      _$BookingRoomCopyWithImpl<$Res>;
  $Res call({String? rateKey, List<Pax>? paxes});
}

/// @nodoc
class _$BookingRoomCopyWithImpl<$Res> implements $BookingRoomCopyWith<$Res> {
  _$BookingRoomCopyWithImpl(this._value, this._then);

  final BookingRoom _value;
  // ignore: unused_field
  final $Res Function(BookingRoom) _then;

  @override
  $Res call({
    Object? rateKey = freezed,
    Object? paxes = freezed,
  }) {
    return _then(_value.copyWith(
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: paxes == freezed
          ? _value.paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookingRoomCopyWith<$Res>
    implements $BookingRoomCopyWith<$Res> {
  factory _$$_BookingRoomCopyWith(
          _$_BookingRoom value, $Res Function(_$_BookingRoom) then) =
      __$$_BookingRoomCopyWithImpl<$Res>;
  @override
  $Res call({String? rateKey, List<Pax>? paxes});
}

/// @nodoc
class __$$_BookingRoomCopyWithImpl<$Res> extends _$BookingRoomCopyWithImpl<$Res>
    implements _$$_BookingRoomCopyWith<$Res> {
  __$$_BookingRoomCopyWithImpl(
      _$_BookingRoom _value, $Res Function(_$_BookingRoom) _then)
      : super(_value, (v) => _then(v as _$_BookingRoom));

  @override
  _$_BookingRoom get _value => super._value as _$_BookingRoom;

  @override
  $Res call({
    Object? rateKey = freezed,
    Object? paxes = freezed,
  }) {
    return _then(_$_BookingRoom(
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: paxes == freezed
          ? _value._paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingRoom implements _BookingRoom {
  _$_BookingRoom({this.rateKey, final List<Pax>? paxes}) : _paxes = paxes;

  factory _$_BookingRoom.fromJson(Map<String, dynamic> json) =>
      _$$_BookingRoomFromJson(json);

  @override
  final String? rateKey;
  final List<Pax>? _paxes;
  @override
  List<Pax>? get paxes {
    final value = _paxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingRoom(rateKey: $rateKey, paxes: $paxes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingRoom &&
            const DeepCollectionEquality().equals(other.rateKey, rateKey) &&
            const DeepCollectionEquality().equals(other._paxes, _paxes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rateKey),
      const DeepCollectionEquality().hash(_paxes));

  @JsonKey(ignore: true)
  @override
  _$$_BookingRoomCopyWith<_$_BookingRoom> get copyWith =>
      __$$_BookingRoomCopyWithImpl<_$_BookingRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingRoomToJson(
      this,
    );
  }
}

abstract class _BookingRoom implements BookingRoom {
  factory _BookingRoom({final String? rateKey, final List<Pax>? paxes}) =
      _$_BookingRoom;

  factory _BookingRoom.fromJson(Map<String, dynamic> json) =
      _$_BookingRoom.fromJson;

  @override
  String? get rateKey;
  @override
  List<Pax>? get paxes;
  @override
  @JsonKey(ignore: true)
  _$$_BookingRoomCopyWith<_$_BookingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
