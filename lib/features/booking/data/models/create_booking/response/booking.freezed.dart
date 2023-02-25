// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  @HiveField(0)
  String? get reference => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get clientReference => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get creationDate => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(4)
  ModificationPolicies? get modificationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(5)
  String? get creationUser => throw _privateConstructorUsedError;
  @HiveField(6)
  Holder? get holder => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel')
  @HiveField(7)
  BookingHotel? get bookingHotel => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get remark => throw _privateConstructorUsedError;
  @HiveField(9)
  InvoiceCompany? get invoiceCompany => throw _privateConstructorUsedError;
  @HiveField(10)
  double? get totalNet => throw _privateConstructorUsedError;
  @HiveField(11)
  double? get pendingAmount => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? reference,
      @HiveField(1) String? clientReference,
      @HiveField(2) String? creationDate,
      @HiveField(3) String? status,
      @HiveField(4) ModificationPolicies? modificationPolicies,
      @HiveField(5) String? creationUser,
      @HiveField(6) Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) BookingHotel? bookingHotel,
      @HiveField(8) String? remark,
      @HiveField(9) InvoiceCompany? invoiceCompany,
      @HiveField(10) double? totalNet,
      @HiveField(11) double? pendingAmount,
      @HiveField(12) String? currency});

  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
  $HolderCopyWith<$Res>? get holder;
  $BookingHotelCopyWith<$Res>? get bookingHotel;
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object? reference = freezed,
    Object? clientReference = freezed,
    Object? creationDate = freezed,
    Object? status = freezed,
    Object? modificationPolicies = freezed,
    Object? creationUser = freezed,
    Object? holder = freezed,
    Object? bookingHotel = freezed,
    Object? remark = freezed,
    Object? invoiceCompany = freezed,
    Object? totalNet = freezed,
    Object? pendingAmount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReference: clientReference == freezed
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationPolicies: modificationPolicies == freezed
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
      creationUser: creationUser == freezed
          ? _value.creationUser
          : creationUser // ignore: cast_nullable_to_non_nullable
              as String?,
      holder: holder == freezed
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingHotel: bookingHotel == freezed
          ? _value.bookingHotel
          : bookingHotel // ignore: cast_nullable_to_non_nullable
              as BookingHotel?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCompany: invoiceCompany == freezed
          ? _value.invoiceCompany
          : invoiceCompany // ignore: cast_nullable_to_non_nullable
              as InvoiceCompany?,
      totalNet: totalNet == freezed
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingAmount: pendingAmount == freezed
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies {
    if (_value.modificationPolicies == null) {
      return null;
    }

    return $ModificationPoliciesCopyWith<$Res>(_value.modificationPolicies!,
        (value) {
      return _then(_value.copyWith(modificationPolicies: value));
    });
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

  @override
  $BookingHotelCopyWith<$Res>? get bookingHotel {
    if (_value.bookingHotel == null) {
      return null;
    }

    return $BookingHotelCopyWith<$Res>(_value.bookingHotel!, (value) {
      return _then(_value.copyWith(bookingHotel: value));
    });
  }

  @override
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany {
    if (_value.invoiceCompany == null) {
      return null;
    }

    return $InvoiceCompanyCopyWith<$Res>(_value.invoiceCompany!, (value) {
      return _then(_value.copyWith(invoiceCompany: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$_BookingCopyWith(
          _$_Booking value, $Res Function(_$_Booking) then) =
      __$$_BookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? reference,
      @HiveField(1) String? clientReference,
      @HiveField(2) String? creationDate,
      @HiveField(3) String? status,
      @HiveField(4) ModificationPolicies? modificationPolicies,
      @HiveField(5) String? creationUser,
      @HiveField(6) Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) BookingHotel? bookingHotel,
      @HiveField(8) String? remark,
      @HiveField(9) InvoiceCompany? invoiceCompany,
      @HiveField(10) double? totalNet,
      @HiveField(11) double? pendingAmount,
      @HiveField(12) String? currency});

  @override
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
  @override
  $HolderCopyWith<$Res>? get holder;
  @override
  $BookingHotelCopyWith<$Res>? get bookingHotel;
  @override
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany;
}

/// @nodoc
class __$$_BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$$_BookingCopyWith<$Res> {
  __$$_BookingCopyWithImpl(_$_Booking _value, $Res Function(_$_Booking) _then)
      : super(_value, (v) => _then(v as _$_Booking));

  @override
  _$_Booking get _value => super._value as _$_Booking;

  @override
  $Res call({
    Object? reference = freezed,
    Object? clientReference = freezed,
    Object? creationDate = freezed,
    Object? status = freezed,
    Object? modificationPolicies = freezed,
    Object? creationUser = freezed,
    Object? holder = freezed,
    Object? bookingHotel = freezed,
    Object? remark = freezed,
    Object? invoiceCompany = freezed,
    Object? totalNet = freezed,
    Object? pendingAmount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$_Booking(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReference: clientReference == freezed
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationPolicies: modificationPolicies == freezed
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
      creationUser: creationUser == freezed
          ? _value.creationUser
          : creationUser // ignore: cast_nullable_to_non_nullable
              as String?,
      holder: holder == freezed
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingHotel: bookingHotel == freezed
          ? _value.bookingHotel
          : bookingHotel // ignore: cast_nullable_to_non_nullable
              as BookingHotel?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCompany: invoiceCompany == freezed
          ? _value.invoiceCompany
          : invoiceCompany // ignore: cast_nullable_to_non_nullable
              as InvoiceCompany?,
      totalNet: totalNet == freezed
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingAmount: pendingAmount == freezed
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Booking implements _Booking {
  _$_Booking(
      {@HiveField(0) this.reference,
      @HiveField(1) this.clientReference,
      @HiveField(2) this.creationDate,
      @HiveField(3) this.status,
      @HiveField(4) this.modificationPolicies,
      @HiveField(5) this.creationUser,
      @HiveField(6) this.holder,
      @JsonKey(name: 'hotel') @HiveField(7) this.bookingHotel,
      @HiveField(8) this.remark,
      @HiveField(9) this.invoiceCompany,
      @HiveField(10) this.totalNet,
      @HiveField(11) this.pendingAmount,
      @HiveField(12) this.currency});

  factory _$_Booking.fromJson(Map<String, dynamic> json) =>
      _$$_BookingFromJson(json);

  @override
  @HiveField(0)
  final String? reference;
  @override
  @HiveField(1)
  final String? clientReference;
  @override
  @HiveField(2)
  final String? creationDate;
  @override
  @HiveField(3)
  final String? status;
  @override
  @HiveField(4)
  final ModificationPolicies? modificationPolicies;
  @override
  @HiveField(5)
  final String? creationUser;
  @override
  @HiveField(6)
  final Holder? holder;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(7)
  final BookingHotel? bookingHotel;
  @override
  @HiveField(8)
  final String? remark;
  @override
  @HiveField(9)
  final InvoiceCompany? invoiceCompany;
  @override
  @HiveField(10)
  final double? totalNet;
  @override
  @HiveField(11)
  final double? pendingAmount;
  @override
  @HiveField(12)
  final String? currency;

  @override
  String toString() {
    return 'Booking(reference: $reference, clientReference: $clientReference, creationDate: $creationDate, status: $status, modificationPolicies: $modificationPolicies, creationUser: $creationUser, holder: $holder, bookingHotel: $bookingHotel, remark: $remark, invoiceCompany: $invoiceCompany, totalNet: $totalNet, pendingAmount: $pendingAmount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Booking &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality()
                .equals(other.clientReference, clientReference) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.modificationPolicies, modificationPolicies) &&
            const DeepCollectionEquality()
                .equals(other.creationUser, creationUser) &&
            const DeepCollectionEquality().equals(other.holder, holder) &&
            const DeepCollectionEquality()
                .equals(other.bookingHotel, bookingHotel) &&
            const DeepCollectionEquality().equals(other.remark, remark) &&
            const DeepCollectionEquality()
                .equals(other.invoiceCompany, invoiceCompany) &&
            const DeepCollectionEquality().equals(other.totalNet, totalNet) &&
            const DeepCollectionEquality()
                .equals(other.pendingAmount, pendingAmount) &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(clientReference),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(modificationPolicies),
      const DeepCollectionEquality().hash(creationUser),
      const DeepCollectionEquality().hash(holder),
      const DeepCollectionEquality().hash(bookingHotel),
      const DeepCollectionEquality().hash(remark),
      const DeepCollectionEquality().hash(invoiceCompany),
      const DeepCollectionEquality().hash(totalNet),
      const DeepCollectionEquality().hash(pendingAmount),
      const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      __$$_BookingCopyWithImpl<_$_Booking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  factory _Booking(
      {@HiveField(0) final String? reference,
      @HiveField(1) final String? clientReference,
      @HiveField(2) final String? creationDate,
      @HiveField(3) final String? status,
      @HiveField(4) final ModificationPolicies? modificationPolicies,
      @HiveField(5) final String? creationUser,
      @HiveField(6) final Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) final BookingHotel? bookingHotel,
      @HiveField(8) final String? remark,
      @HiveField(9) final InvoiceCompany? invoiceCompany,
      @HiveField(10) final double? totalNet,
      @HiveField(11) final double? pendingAmount,
      @HiveField(12) final String? currency}) = _$_Booking;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$_Booking.fromJson;

  @override
  @HiveField(0)
  String? get reference;
  @override
  @HiveField(1)
  String? get clientReference;
  @override
  @HiveField(2)
  String? get creationDate;
  @override
  @HiveField(3)
  String? get status;
  @override
  @HiveField(4)
  ModificationPolicies? get modificationPolicies;
  @override
  @HiveField(5)
  String? get creationUser;
  @override
  @HiveField(6)
  Holder? get holder;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(7)
  BookingHotel? get bookingHotel;
  @override
  @HiveField(8)
  String? get remark;
  @override
  @HiveField(9)
  InvoiceCompany? get invoiceCompany;
  @override
  @HiveField(10)
  double? get totalNet;
  @override
  @HiveField(11)
  double? get pendingAmount;
  @override
  @HiveField(12)
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}
