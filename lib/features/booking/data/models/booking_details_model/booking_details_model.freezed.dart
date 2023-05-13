// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingDetailsModel _$BookingDetailsModelFromJson(Map<String, dynamic> json) {
  return _BookingDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailsModel {
  @HiveField(0)
  String? get bookingId => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get hotelId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get checkIn => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get checkOut => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get children => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get category => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get board => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get price => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDetailsModelCopyWith<BookingDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsModelCopyWith<$Res> {
  factory $BookingDetailsModelCopyWith(
          BookingDetailsModel value, $Res Function(BookingDetailsModel) then) =
      _$BookingDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? bookingId,
      @HiveField(1) int? hotelId,
      @HiveField(2) String? createdAt,
      @HiveField(3) String? firstName,
      @HiveField(4) String? lastName,
      @HiveField(5) String? checkIn,
      @HiveField(6) String? checkOut,
      @HiveField(7) int? adults,
      @HiveField(8) int? children,
      @HiveField(9) String? category,
      @HiveField(10) String? board,
      @HiveField(11) String? price,
      @HiveField(12) String? type});
}

/// @nodoc
class _$BookingDetailsModelCopyWithImpl<$Res>
    implements $BookingDetailsModelCopyWith<$Res> {
  _$BookingDetailsModelCopyWithImpl(this._value, this._then);

  final BookingDetailsModel _value;
  // ignore: unused_field
  final $Res Function(BookingDetailsModel) _then;

  @override
  $Res call({
    Object? bookingId = freezed,
    Object? hotelId = freezed,
    Object? createdAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? adults = freezed,
    Object? children = freezed,
    Object? category = freezed,
    Object? board = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: hotelId == freezed
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookingDetailsModelCopyWith<$Res>
    implements $BookingDetailsModelCopyWith<$Res> {
  factory _$$_BookingDetailsModelCopyWith(_$_BookingDetailsModel value,
          $Res Function(_$_BookingDetailsModel) then) =
      __$$_BookingDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? bookingId,
      @HiveField(1) int? hotelId,
      @HiveField(2) String? createdAt,
      @HiveField(3) String? firstName,
      @HiveField(4) String? lastName,
      @HiveField(5) String? checkIn,
      @HiveField(6) String? checkOut,
      @HiveField(7) int? adults,
      @HiveField(8) int? children,
      @HiveField(9) String? category,
      @HiveField(10) String? board,
      @HiveField(11) String? price,
      @HiveField(12) String? type});
}

/// @nodoc
class __$$_BookingDetailsModelCopyWithImpl<$Res>
    extends _$BookingDetailsModelCopyWithImpl<$Res>
    implements _$$_BookingDetailsModelCopyWith<$Res> {
  __$$_BookingDetailsModelCopyWithImpl(_$_BookingDetailsModel _value,
      $Res Function(_$_BookingDetailsModel) _then)
      : super(_value, (v) => _then(v as _$_BookingDetailsModel));

  @override
  _$_BookingDetailsModel get _value => super._value as _$_BookingDetailsModel;

  @override
  $Res call({
    Object? bookingId = freezed,
    Object? hotelId = freezed,
    Object? createdAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? adults = freezed,
    Object? children = freezed,
    Object? category = freezed,
    Object? board = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_BookingDetailsModel(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: hotelId == freezed
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingDetailsModel implements _BookingDetailsModel {
  _$_BookingDetailsModel(
      {@HiveField(0) this.bookingId,
      @HiveField(1) this.hotelId,
      @HiveField(2) this.createdAt,
      @HiveField(3) this.firstName,
      @HiveField(4) this.lastName,
      @HiveField(5) this.checkIn,
      @HiveField(6) this.checkOut,
      @HiveField(7) this.adults,
      @HiveField(8) this.children,
      @HiveField(9) this.category,
      @HiveField(10) this.board,
      @HiveField(11) this.price,
      @HiveField(12) this.type});

  factory _$_BookingDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingDetailsModelFromJson(json);

  @override
  @HiveField(0)
  final String? bookingId;
  @override
  @HiveField(1)
  final int? hotelId;
  @override
  @HiveField(2)
  final String? createdAt;
  @override
  @HiveField(3)
  final String? firstName;
  @override
  @HiveField(4)
  final String? lastName;
  @override
  @HiveField(5)
  final String? checkIn;
  @override
  @HiveField(6)
  final String? checkOut;
  @override
  @HiveField(7)
  final int? adults;
  @override
  @HiveField(8)
  final int? children;
  @override
  @HiveField(9)
  final String? category;
  @override
  @HiveField(10)
  final String? board;
  @override
  @HiveField(11)
  final String? price;
  @override
  @HiveField(12)
  final String? type;

  @override
  String toString() {
    return 'BookingDetailsModel(bookingId: $bookingId, hotelId: $hotelId, createdAt: $createdAt, firstName: $firstName, lastName: $lastName, checkIn: $checkIn, checkOut: $checkOut, adults: $adults, children: $children, category: $category, board: $board, price: $price, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingDetailsModel &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.hotelId, hotelId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut) &&
            const DeepCollectionEquality().equals(other.adults, adults) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.board, board) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(hotelId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(checkOut),
      const DeepCollectionEquality().hash(adults),
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(board),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_BookingDetailsModelCopyWith<_$_BookingDetailsModel> get copyWith =>
      __$$_BookingDetailsModelCopyWithImpl<_$_BookingDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingDetailsModelToJson(
      this,
    );
  }
}

abstract class _BookingDetailsModel implements BookingDetailsModel {
  factory _BookingDetailsModel(
      {@HiveField(0) final String? bookingId,
      @HiveField(1) final int? hotelId,
      @HiveField(2) final String? createdAt,
      @HiveField(3) final String? firstName,
      @HiveField(4) final String? lastName,
      @HiveField(5) final String? checkIn,
      @HiveField(6) final String? checkOut,
      @HiveField(7) final int? adults,
      @HiveField(8) final int? children,
      @HiveField(9) final String? category,
      @HiveField(10) final String? board,
      @HiveField(11) final String? price,
      @HiveField(12) final String? type}) = _$_BookingDetailsModel;

  factory _BookingDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_BookingDetailsModel.fromJson;

  @override
  @HiveField(0)
  String? get bookingId;
  @override
  @HiveField(1)
  int? get hotelId;
  @override
  @HiveField(2)
  String? get createdAt;
  @override
  @HiveField(3)
  String? get firstName;
  @override
  @HiveField(4)
  String? get lastName;
  @override
  @HiveField(5)
  String? get checkIn;
  @override
  @HiveField(6)
  String? get checkOut;
  @override
  @HiveField(7)
  int? get adults;
  @override
  @HiveField(8)
  int? get children;
  @override
  @HiveField(9)
  String? get category;
  @override
  @HiveField(10)
  String? get board;
  @override
  @HiveField(11)
  String? get price;
  @override
  @HiveField(12)
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_BookingDetailsModelCopyWith<_$_BookingDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
