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
  @HiveField(0)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Pax>? get paxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates => throw _privateConstructorUsedError;

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
  $Res call(
      {@HiveField(0) String? status,
      @HiveField(1) int? id,
      @HiveField(2) String? code,
      @HiveField(3) String? name,
      @HiveField(4) List<Pax>? paxes,
      @JsonKey(name: 'rates') @HiveField(5) List<BookingRate>? bookingRates});
}

/// @nodoc
class _$BookingRoomCopyWithImpl<$Res> implements $BookingRoomCopyWith<$Res> {
  _$BookingRoomCopyWithImpl(this._value, this._then);

  final BookingRoom _value;
  // ignore: unused_field
  final $Res Function(BookingRoom) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? paxes = freezed,
    Object? bookingRates = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: paxes == freezed
          ? _value.paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
      bookingRates: bookingRates == freezed
          ? _value.bookingRates
          : bookingRates // ignore: cast_nullable_to_non_nullable
              as List<BookingRate>?,
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
  $Res call(
      {@HiveField(0) String? status,
      @HiveField(1) int? id,
      @HiveField(2) String? code,
      @HiveField(3) String? name,
      @HiveField(4) List<Pax>? paxes,
      @JsonKey(name: 'rates') @HiveField(5) List<BookingRate>? bookingRates});
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
    Object? status = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? paxes = freezed,
    Object? bookingRates = freezed,
  }) {
    return _then(_$_BookingRoom(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: paxes == freezed
          ? _value._paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
      bookingRates: bookingRates == freezed
          ? _value._bookingRates
          : bookingRates // ignore: cast_nullable_to_non_nullable
              as List<BookingRate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingRoom implements _BookingRoom {
  _$_BookingRoom(
      {@HiveField(0)
          this.status,
      @HiveField(1)
          this.id,
      @HiveField(2)
          this.code,
      @HiveField(3)
          this.name,
      @HiveField(4)
          final List<Pax>? paxes,
      @JsonKey(name: 'rates')
      @HiveField(5)
          final List<BookingRate>? bookingRates})
      : _paxes = paxes,
        _bookingRates = bookingRates;

  factory _$_BookingRoom.fromJson(Map<String, dynamic> json) =>
      _$$_BookingRoomFromJson(json);

  @override
  @HiveField(0)
  final String? status;
  @override
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final String? code;
  @override
  @HiveField(3)
  final String? name;
  final List<Pax>? _paxes;
  @override
  @HiveField(4)
  List<Pax>? get paxes {
    final value = _paxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookingRate>? _bookingRates;
  @override
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates {
    final value = _bookingRates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingRoom(status: $status, id: $id, code: $code, name: $name, paxes: $paxes, bookingRates: $bookingRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingRoom &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._paxes, _paxes) &&
            const DeepCollectionEquality()
                .equals(other._bookingRates, _bookingRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_paxes),
      const DeepCollectionEquality().hash(_bookingRates));

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
  factory _BookingRoom(
      {@HiveField(0)
          final String? status,
      @HiveField(1)
          final int? id,
      @HiveField(2)
          final String? code,
      @HiveField(3)
          final String? name,
      @HiveField(4)
          final List<Pax>? paxes,
      @JsonKey(name: 'rates')
      @HiveField(5)
          final List<BookingRate>? bookingRates}) = _$_BookingRoom;

  factory _BookingRoom.fromJson(Map<String, dynamic> json) =
      _$_BookingRoom.fromJson;

  @override
  @HiveField(0)
  String? get status;
  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  String? get code;
  @override
  @HiveField(3)
  String? get name;
  @override
  @HiveField(4)
  List<Pax>? get paxes;
  @override
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates;
  @override
  @JsonKey(ignore: true)
  _$$_BookingRoomCopyWith<_$_BookingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
