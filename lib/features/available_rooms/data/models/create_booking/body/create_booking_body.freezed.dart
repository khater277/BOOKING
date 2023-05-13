// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_booking_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBookingBody _$CreateBookingBodyFromJson(Map<String, dynamic> json) {
  return _CreateBookingBody.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingBody {
  Holder? get holder => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms => throw _privateConstructorUsedError;
  String? get clientReference => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  int? get tolerance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingBodyCopyWith<CreateBookingBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingBodyCopyWith<$Res> {
  factory $CreateBookingBodyCopyWith(
          CreateBookingBody value, $Res Function(CreateBookingBody) then) =
      _$CreateBookingBodyCopyWithImpl<$Res>;
  $Res call(
      {Holder? holder,
      @JsonKey(name: 'rooms') List<BookingRoom>? bookingRooms,
      String? clientReference,
      String? remark,
      int? tolerance});

  $HolderCopyWith<$Res>? get holder;
}

/// @nodoc
class _$CreateBookingBodyCopyWithImpl<$Res>
    implements $CreateBookingBodyCopyWith<$Res> {
  _$CreateBookingBodyCopyWithImpl(this._value, this._then);

  final CreateBookingBody _value;
  // ignore: unused_field
  final $Res Function(CreateBookingBody) _then;

  @override
  $Res call({
    Object? holder = freezed,
    Object? bookingRooms = freezed,
    Object? clientReference = freezed,
    Object? remark = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_value.copyWith(
      holder: holder == freezed
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingRooms: bookingRooms == freezed
          ? _value.bookingRooms
          : bookingRooms // ignore: cast_nullable_to_non_nullable
              as List<BookingRoom>?,
      clientReference: clientReference == freezed
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      tolerance: tolerance == freezed
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $HolderCopyWith<$Res>? get holder {
    if (_value.holder == null) {
      return null;
    }

    return $HolderCopyWith<$Res>(_value.holder!, (value) {
      return _then(_value.copyWith(holder: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateBookingBodyCopyWith<$Res>
    implements $CreateBookingBodyCopyWith<$Res> {
  factory _$$_CreateBookingBodyCopyWith(_$_CreateBookingBody value,
          $Res Function(_$_CreateBookingBody) then) =
      __$$_CreateBookingBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {Holder? holder,
      @JsonKey(name: 'rooms') List<BookingRoom>? bookingRooms,
      String? clientReference,
      String? remark,
      int? tolerance});

  @override
  $HolderCopyWith<$Res>? get holder;
}

/// @nodoc
class __$$_CreateBookingBodyCopyWithImpl<$Res>
    extends _$CreateBookingBodyCopyWithImpl<$Res>
    implements _$$_CreateBookingBodyCopyWith<$Res> {
  __$$_CreateBookingBodyCopyWithImpl(
      _$_CreateBookingBody _value, $Res Function(_$_CreateBookingBody) _then)
      : super(_value, (v) => _then(v as _$_CreateBookingBody));

  @override
  _$_CreateBookingBody get _value => super._value as _$_CreateBookingBody;

  @override
  $Res call({
    Object? holder = freezed,
    Object? bookingRooms = freezed,
    Object? clientReference = freezed,
    Object? remark = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_$_CreateBookingBody(
      holder: holder == freezed
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingRooms: bookingRooms == freezed
          ? _value._bookingRooms
          : bookingRooms // ignore: cast_nullable_to_non_nullable
              as List<BookingRoom>?,
      clientReference: clientReference == freezed
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      tolerance: tolerance == freezed
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateBookingBody implements _CreateBookingBody {
  _$_CreateBookingBody(
      {this.holder,
      @JsonKey(name: 'rooms') final List<BookingRoom>? bookingRooms,
      this.clientReference,
      this.remark,
      this.tolerance})
      : _bookingRooms = bookingRooms;

  factory _$_CreateBookingBody.fromJson(Map<String, dynamic> json) =>
      _$$_CreateBookingBodyFromJson(json);

  @override
  final Holder? holder;
  final List<BookingRoom>? _bookingRooms;
  @override
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms {
    final value = _bookingRooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? clientReference;
  @override
  final String? remark;
  @override
  final int? tolerance;

  @override
  String toString() {
    return 'CreateBookingBody(holder: $holder, bookingRooms: $bookingRooms, clientReference: $clientReference, remark: $remark, tolerance: $tolerance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBookingBody &&
            const DeepCollectionEquality().equals(other.holder, holder) &&
            const DeepCollectionEquality()
                .equals(other._bookingRooms, _bookingRooms) &&
            const DeepCollectionEquality()
                .equals(other.clientReference, clientReference) &&
            const DeepCollectionEquality().equals(other.remark, remark) &&
            const DeepCollectionEquality().equals(other.tolerance, tolerance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(holder),
      const DeepCollectionEquality().hash(_bookingRooms),
      const DeepCollectionEquality().hash(clientReference),
      const DeepCollectionEquality().hash(remark),
      const DeepCollectionEquality().hash(tolerance));

  @JsonKey(ignore: true)
  @override
  _$$_CreateBookingBodyCopyWith<_$_CreateBookingBody> get copyWith =>
      __$$_CreateBookingBodyCopyWithImpl<_$_CreateBookingBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateBookingBodyToJson(
      this,
    );
  }
}

abstract class _CreateBookingBody implements CreateBookingBody {
  factory _CreateBookingBody(
      {final Holder? holder,
      @JsonKey(name: 'rooms') final List<BookingRoom>? bookingRooms,
      final String? clientReference,
      final String? remark,
      final int? tolerance}) = _$_CreateBookingBody;

  factory _CreateBookingBody.fromJson(Map<String, dynamic> json) =
      _$_CreateBookingBody.fromJson;

  @override
  Holder? get holder;
  @override
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms;
  @override
  String? get clientReference;
  @override
  String? get remark;
  @override
  int? get tolerance;
  @override
  @JsonKey(ignore: true)
  _$$_CreateBookingBodyCopyWith<_$_CreateBookingBody> get copyWith =>
      throw _privateConstructorUsedError;
}
