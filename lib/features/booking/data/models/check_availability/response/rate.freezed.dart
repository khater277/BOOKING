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

AvailableRate _$AvailableRateFromJson(Map<String, dynamic> json) {
  return _AvailableRate.fromJson(json);
}

/// @nodoc
mixin _$AvailableRate {
  @HiveField(0)
  String? get rateKey => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get rateClass => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get rateType => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get net => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get allotment => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get paymentType => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get packaging => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get boardCode => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get boardName => throw _privateConstructorUsedError;
  @HiveField(9)
  List<CancellationPolicy>? get cancellationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(10)
  Taxes? get taxes => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get rooms => throw _privateConstructorUsedError;
  @HiveField(12)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableRateCopyWith<AvailableRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableRateCopyWith<$Res> {
  factory $AvailableRateCopyWith(
          AvailableRate value, $Res Function(AvailableRate) then) =
      _$AvailableRateCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? rateKey,
      @HiveField(1) String? rateClass,
      @HiveField(2) String? rateType,
      @HiveField(3) String? net,
      @HiveField(4) int? allotment,
      @HiveField(5) String? paymentType,
      @HiveField(6) bool? packaging,
      @HiveField(7) String? boardCode,
      @HiveField(8) String? boardName,
      @HiveField(9) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(10) Taxes? taxes,
      @HiveField(11) int? rooms,
      @HiveField(12) int? adults,
      @HiveField(13) int? children});

  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class _$AvailableRateCopyWithImpl<$Res>
    implements $AvailableRateCopyWith<$Res> {
  _$AvailableRateCopyWithImpl(this._value, this._then);

  final AvailableRate _value;
  // ignore: unused_field
  final $Res Function(AvailableRate) _then;

  @override
  $Res call({
    Object? rateKey = freezed,
    Object? rateClass = freezed,
    Object? rateType = freezed,
    Object? net = freezed,
    Object? allotment = freezed,
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
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      rateClass: rateClass == freezed
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      rateType: rateType == freezed
          ? _value.rateType
          : rateType // ignore: cast_nullable_to_non_nullable
              as String?,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      allotment: allotment == freezed
          ? _value.allotment
          : allotment // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_AvailableRateCopyWith<$Res>
    implements $AvailableRateCopyWith<$Res> {
  factory _$$_AvailableRateCopyWith(
          _$_AvailableRate value, $Res Function(_$_AvailableRate) then) =
      __$$_AvailableRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? rateKey,
      @HiveField(1) String? rateClass,
      @HiveField(2) String? rateType,
      @HiveField(3) String? net,
      @HiveField(4) int? allotment,
      @HiveField(5) String? paymentType,
      @HiveField(6) bool? packaging,
      @HiveField(7) String? boardCode,
      @HiveField(8) String? boardName,
      @HiveField(9) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(10) Taxes? taxes,
      @HiveField(11) int? rooms,
      @HiveField(12) int? adults,
      @HiveField(13) int? children});

  @override
  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class __$$_AvailableRateCopyWithImpl<$Res>
    extends _$AvailableRateCopyWithImpl<$Res>
    implements _$$_AvailableRateCopyWith<$Res> {
  __$$_AvailableRateCopyWithImpl(
      _$_AvailableRate _value, $Res Function(_$_AvailableRate) _then)
      : super(_value, (v) => _then(v as _$_AvailableRate));

  @override
  _$_AvailableRate get _value => super._value as _$_AvailableRate;

  @override
  $Res call({
    Object? rateKey = freezed,
    Object? rateClass = freezed,
    Object? rateType = freezed,
    Object? net = freezed,
    Object? allotment = freezed,
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
    return _then(_$_AvailableRate(
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      rateClass: rateClass == freezed
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      rateType: rateType == freezed
          ? _value.rateType
          : rateType // ignore: cast_nullable_to_non_nullable
              as String?,
      net: net == freezed
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      allotment: allotment == freezed
          ? _value.allotment
          : allotment // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_AvailableRate implements _AvailableRate {
  _$_AvailableRate(
      {@HiveField(0) this.rateKey,
      @HiveField(1) this.rateClass,
      @HiveField(2) this.rateType,
      @HiveField(3) this.net,
      @HiveField(4) this.allotment,
      @HiveField(5) this.paymentType,
      @HiveField(6) this.packaging,
      @HiveField(7) this.boardCode,
      @HiveField(8) this.boardName,
      @HiveField(9) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(10) this.taxes,
      @HiveField(11) this.rooms,
      @HiveField(12) this.adults,
      @HiveField(13) this.children})
      : _cancellationPolicies = cancellationPolicies;

  factory _$_AvailableRate.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableRateFromJson(json);

  @override
  @HiveField(0)
  final String? rateKey;
  @override
  @HiveField(1)
  final String? rateClass;
  @override
  @HiveField(2)
  final String? rateType;
  @override
  @HiveField(3)
  final String? net;
  @override
  @HiveField(4)
  final int? allotment;
  @override
  @HiveField(5)
  final String? paymentType;
  @override
  @HiveField(6)
  final bool? packaging;
  @override
  @HiveField(7)
  final String? boardCode;
  @override
  @HiveField(8)
  final String? boardName;
  final List<CancellationPolicy>? _cancellationPolicies;
  @override
  @HiveField(9)
  List<CancellationPolicy>? get cancellationPolicies {
    final value = _cancellationPolicies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(10)
  final Taxes? taxes;
  @override
  @HiveField(11)
  final int? rooms;
  @override
  @HiveField(12)
  final int? adults;
  @override
  @HiveField(13)
  final int? children;

  @override
  String toString() {
    return 'AvailableRate(rateKey: $rateKey, rateClass: $rateClass, rateType: $rateType, net: $net, allotment: $allotment, paymentType: $paymentType, packaging: $packaging, boardCode: $boardCode, boardName: $boardName, cancellationPolicies: $cancellationPolicies, taxes: $taxes, rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableRate &&
            const DeepCollectionEquality().equals(other.rateKey, rateKey) &&
            const DeepCollectionEquality().equals(other.rateClass, rateClass) &&
            const DeepCollectionEquality().equals(other.rateType, rateType) &&
            const DeepCollectionEquality().equals(other.net, net) &&
            const DeepCollectionEquality().equals(other.allotment, allotment) &&
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
      const DeepCollectionEquality().hash(rateKey),
      const DeepCollectionEquality().hash(rateClass),
      const DeepCollectionEquality().hash(rateType),
      const DeepCollectionEquality().hash(net),
      const DeepCollectionEquality().hash(allotment),
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
  _$$_AvailableRateCopyWith<_$_AvailableRate> get copyWith =>
      __$$_AvailableRateCopyWithImpl<_$_AvailableRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableRateToJson(
      this,
    );
  }
}

abstract class _AvailableRate implements AvailableRate {
  factory _AvailableRate(
      {@HiveField(0) final String? rateKey,
      @HiveField(1) final String? rateClass,
      @HiveField(2) final String? rateType,
      @HiveField(3) final String? net,
      @HiveField(4) final int? allotment,
      @HiveField(5) final String? paymentType,
      @HiveField(6) final bool? packaging,
      @HiveField(7) final String? boardCode,
      @HiveField(8) final String? boardName,
      @HiveField(9) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(10) final Taxes? taxes,
      @HiveField(11) final int? rooms,
      @HiveField(12) final int? adults,
      @HiveField(13) final int? children}) = _$_AvailableRate;

  factory _AvailableRate.fromJson(Map<String, dynamic> json) =
      _$_AvailableRate.fromJson;

  @override
  @HiveField(0)
  String? get rateKey;
  @override
  @HiveField(1)
  String? get rateClass;
  @override
  @HiveField(2)
  String? get rateType;
  @override
  @HiveField(3)
  String? get net;
  @override
  @HiveField(4)
  int? get allotment;
  @override
  @HiveField(5)
  String? get paymentType;
  @override
  @HiveField(6)
  bool? get packaging;
  @override
  @HiveField(7)
  String? get boardCode;
  @override
  @HiveField(8)
  String? get boardName;
  @override
  @HiveField(9)
  List<CancellationPolicy>? get cancellationPolicies;
  @override
  @HiveField(10)
  Taxes? get taxes;
  @override
  @HiveField(11)
  int? get rooms;
  @override
  @HiveField(12)
  int? get adults;
  @override
  @HiveField(13)
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableRateCopyWith<_$_AvailableRate> get copyWith =>
      throw _privateConstructorUsedError;
}
