// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingRate _$BookingRateFromJson(Map<String, dynamic> json) {
  return _BookingRate.fromJson(json);
}

/// @nodoc
mixin _$BookingRate {
  @HiveField(0)
  String? get rateClass => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get net => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get rateComments => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get paymentType => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get packaging => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get boardCode => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get boardName => throw _privateConstructorUsedError;
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(8)
  Taxes? get taxes => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get rooms => throw _privateConstructorUsedError;
  @HiveField(10)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRateCopyWith<BookingRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRateCopyWith<$Res> {
  factory $BookingRateCopyWith(
          BookingRate value, $Res Function(BookingRate) then) =
      _$BookingRateCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? rateClass,
      @HiveField(1) String? net,
      @HiveField(2) String? rateComments,
      @HiveField(3) String? paymentType,
      @HiveField(4) bool? packaging,
      @HiveField(5) String? boardCode,
      @HiveField(6) String? boardName,
      @HiveField(7) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) Taxes? taxes,
      @HiveField(9) int? rooms,
      @HiveField(10) int? adults,
      @HiveField(11) int? children});

  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class _$BookingRateCopyWithImpl<$Res> implements $BookingRateCopyWith<$Res> {
  _$BookingRateCopyWithImpl(this._value, this._then);

  final BookingRate _value;
  // ignore: unused_field
  final $Res Function(BookingRate) _then;

  @override
  $Res call({
    Object? rateClass = freezed,
    Object? net = freezed,
    Object? rateComments = freezed,
    Object? paymentType = freezed,
    Object? packaging = freezed,
    Object? boardCode = freezed,
    Object? boardName = freezed,
    Object? cancellationPolicies = freezed,
    Object? taxes = freezed,
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      rateClass: rateClass == freezed
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      rateComments: rateComments == freezed
          ? _value.rateComments
          : rateComments // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: packaging == freezed
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      boardCode: boardCode == freezed
          ? _value.boardCode
          : boardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationPolicies: cancellationPolicies == freezed
          ? _value.cancellationPolicies
          : cancellationPolicies // ignore: cast_nullable_to_non_nullable
              as List<CancellationPolicy>?,
      taxes: taxes == freezed
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as Taxes?,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $TaxesCopyWith<$Res>? get taxes {
    if (_value.taxes == null) {
      return null;
    }

    return $TaxesCopyWith<$Res>(_value.taxes!, (value) {
      return _then(_value.copyWith(taxes: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingRateCopyWith<$Res>
    implements $BookingRateCopyWith<$Res> {
  factory _$$_BookingRateCopyWith(
          _$_BookingRate value, $Res Function(_$_BookingRate) then) =
      __$$_BookingRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? rateClass,
      @HiveField(1) String? net,
      @HiveField(2) String? rateComments,
      @HiveField(3) String? paymentType,
      @HiveField(4) bool? packaging,
      @HiveField(5) String? boardCode,
      @HiveField(6) String? boardName,
      @HiveField(7) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) Taxes? taxes,
      @HiveField(9) int? rooms,
      @HiveField(10) int? adults,
      @HiveField(11) int? children});

  @override
  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class __$$_BookingRateCopyWithImpl<$Res> extends _$BookingRateCopyWithImpl<$Res>
    implements _$$_BookingRateCopyWith<$Res> {
  __$$_BookingRateCopyWithImpl(
      _$_BookingRate _value, $Res Function(_$_BookingRate) _then)
      : super(_value, (v) => _then(v as _$_BookingRate));

  @override
  _$_BookingRate get _value => super._value as _$_BookingRate;

  @override
  $Res call({
    Object? rateClass = freezed,
    Object? net = freezed,
    Object? rateComments = freezed,
    Object? paymentType = freezed,
    Object? packaging = freezed,
    Object? boardCode = freezed,
    Object? boardName = freezed,
    Object? cancellationPolicies = freezed,
    Object? taxes = freezed,
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_BookingRate(
      rateClass: rateClass == freezed
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      rateComments: rateComments == freezed
          ? _value.rateComments
          : rateComments // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: packaging == freezed
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      boardCode: boardCode == freezed
          ? _value.boardCode
          : boardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationPolicies: cancellationPolicies == freezed
          ? _value._cancellationPolicies
          : cancellationPolicies // ignore: cast_nullable_to_non_nullable
              as List<CancellationPolicy>?,
      taxes: taxes == freezed
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as Taxes?,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingRate implements _BookingRate {
  _$_BookingRate(
      {@HiveField(0) this.rateClass,
      @HiveField(1) this.net,
      @HiveField(2) this.rateComments,
      @HiveField(3) this.paymentType,
      @HiveField(4) this.packaging,
      @HiveField(5) this.boardCode,
      @HiveField(6) this.boardName,
      @HiveField(7) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) this.taxes,
      @HiveField(9) this.rooms,
      @HiveField(10) this.adults,
      @HiveField(11) this.children})
      : _cancellationPolicies = cancellationPolicies;

  factory _$_BookingRate.fromJson(Map<String, dynamic> json) =>
      _$$_BookingRateFromJson(json);

  @override
  @HiveField(0)
  final String? rateClass;
  @override
  @HiveField(1)
  final String? net;
  @override
  @HiveField(2)
  final String? rateComments;
  @override
  @HiveField(3)
  final String? paymentType;
  @override
  @HiveField(4)
  final bool? packaging;
  @override
  @HiveField(5)
  final String? boardCode;
  @override
  @HiveField(6)
  final String? boardName;
  final List<CancellationPolicy>? _cancellationPolicies;
  @override
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies {
    final value = _cancellationPolicies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(8)
  final Taxes? taxes;
  @override
  @HiveField(9)
  final int? rooms;
  @override
  @HiveField(10)
  final int? adults;
  @override
  @HiveField(11)
  final int? children;

  @override
  String toString() {
    return 'BookingRate(rateClass: $rateClass, net: $net, rateComments: $rateComments, paymentType: $paymentType, packaging: $packaging, boardCode: $boardCode, boardName: $boardName, cancellationPolicies: $cancellationPolicies, taxes: $taxes, rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingRate &&
            const DeepCollectionEquality().equals(other.rateClass, rateClass) &&
            const DeepCollectionEquality().equals(other.net, net) &&
            const DeepCollectionEquality()
                .equals(other.rateComments, rateComments) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.packaging, packaging) &&
            const DeepCollectionEquality().equals(other.boardCode, boardCode) &&
            const DeepCollectionEquality().equals(other.boardName, boardName) &&
            const DeepCollectionEquality()
                .equals(other._cancellationPolicies, _cancellationPolicies) &&
            const DeepCollectionEquality().equals(other.taxes, taxes) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            const DeepCollectionEquality().equals(other.adults, adults) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rateClass),
      const DeepCollectionEquality().hash(net),
      const DeepCollectionEquality().hash(rateComments),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(packaging),
      const DeepCollectionEquality().hash(boardCode),
      const DeepCollectionEquality().hash(boardName),
      const DeepCollectionEquality().hash(_cancellationPolicies),
      const DeepCollectionEquality().hash(taxes),
      const DeepCollectionEquality().hash(rooms),
      const DeepCollectionEquality().hash(adults),
      const DeepCollectionEquality().hash(children));

  @JsonKey(ignore: true)
  @override
  _$$_BookingRateCopyWith<_$_BookingRate> get copyWith =>
      __$$_BookingRateCopyWithImpl<_$_BookingRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingRateToJson(
      this,
    );
  }
}

abstract class _BookingRate implements BookingRate {
  factory _BookingRate(
      {@HiveField(0) final String? rateClass,
      @HiveField(1) final String? net,
      @HiveField(2) final String? rateComments,
      @HiveField(3) final String? paymentType,
      @HiveField(4) final bool? packaging,
      @HiveField(5) final String? boardCode,
      @HiveField(6) final String? boardName,
      @HiveField(7) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) final Taxes? taxes,
      @HiveField(9) final int? rooms,
      @HiveField(10) final int? adults,
      @HiveField(11) final int? children}) = _$_BookingRate;

  factory _BookingRate.fromJson(Map<String, dynamic> json) =
      _$_BookingRate.fromJson;

  @override
  @HiveField(0)
  String? get rateClass;
  @override
  @HiveField(1)
  String? get net;
  @override
  @HiveField(2)
  String? get rateComments;
  @override
  @HiveField(3)
  String? get paymentType;
  @override
  @HiveField(4)
  bool? get packaging;
  @override
  @HiveField(5)
  String? get boardCode;
  @override
  @HiveField(6)
  String? get boardName;
  @override
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies;
  @override
  @HiveField(8)
  Taxes? get taxes;
  @override
  @HiveField(9)
  int? get rooms;
  @override
  @HiveField(10)
  int? get adults;
  @override
  @HiveField(11)
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$_BookingRateCopyWith<_$_BookingRate> get copyWith =>
      throw _privateConstructorUsedError;
}
