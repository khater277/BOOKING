// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tax _$TaxFromJson(Map<String, dynamic> json) {
  return _Tax.fromJson(json);
}

/// @nodoc
mixin _$Tax {
  @HiveField(0)
  bool? get included => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get amount => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get currency => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get clientAmount => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get clientCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxCopyWith<Tax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCopyWith<$Res> {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) then) =
      _$TaxCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) bool? included,
      @HiveField(1) String? amount,
      @HiveField(2) String? currency,
      @HiveField(3) String? clientAmount,
      @HiveField(4) String? clientCurrency});
}

/// @nodoc
class _$TaxCopyWithImpl<$Res> implements $TaxCopyWith<$Res> {
  _$TaxCopyWithImpl(this._value, this._then);

  final Tax _value;
  // ignore: unused_field
  final $Res Function(Tax) _then;

  @override
  $Res call({
    Object? included = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? clientAmount = freezed,
    Object? clientCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      included: included == freezed
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      clientAmount: clientAmount == freezed
          ? _value.clientAmount
          : clientAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCurrency: clientCurrency == freezed
          ? _value.clientCurrency
          : clientCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaxCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$$_TaxCopyWith(_$_Tax value, $Res Function(_$_Tax) then) =
      __$$_TaxCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) bool? included,
      @HiveField(1) String? amount,
      @HiveField(2) String? currency,
      @HiveField(3) String? clientAmount,
      @HiveField(4) String? clientCurrency});
}

/// @nodoc
class __$$_TaxCopyWithImpl<$Res> extends _$TaxCopyWithImpl<$Res>
    implements _$$_TaxCopyWith<$Res> {
  __$$_TaxCopyWithImpl(_$_Tax _value, $Res Function(_$_Tax) _then)
      : super(_value, (v) => _then(v as _$_Tax));

  @override
  _$_Tax get _value => super._value as _$_Tax;

  @override
  $Res call({
    Object? included = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? clientAmount = freezed,
    Object? clientCurrency = freezed,
  }) {
    return _then(_$_Tax(
      included: included == freezed
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      clientAmount: clientAmount == freezed
          ? _value.clientAmount
          : clientAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCurrency: clientCurrency == freezed
          ? _value.clientCurrency
          : clientCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tax implements _Tax {
  _$_Tax(
      {@HiveField(0) this.included,
      @HiveField(1) this.amount,
      @HiveField(2) this.currency,
      @HiveField(3) this.clientAmount,
      @HiveField(4) this.clientCurrency});

  factory _$_Tax.fromJson(Map<String, dynamic> json) => _$$_TaxFromJson(json);

  @override
  @HiveField(0)
  final bool? included;
  @override
  @HiveField(1)
  final String? amount;
  @override
  @HiveField(2)
  final String? currency;
  @override
  @HiveField(3)
  final String? clientAmount;
  @override
  @HiveField(4)
  final String? clientCurrency;

  @override
  String toString() {
    return 'Tax(included: $included, amount: $amount, currency: $currency, clientAmount: $clientAmount, clientCurrency: $clientCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tax &&
            const DeepCollectionEquality().equals(other.included, included) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.clientAmount, clientAmount) &&
            const DeepCollectionEquality()
                .equals(other.clientCurrency, clientCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(included),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(clientAmount),
      const DeepCollectionEquality().hash(clientCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_TaxCopyWith<_$_Tax> get copyWith =>
      __$$_TaxCopyWithImpl<_$_Tax>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxToJson(
      this,
    );
  }
}

abstract class _Tax implements Tax {
  factory _Tax(
      {@HiveField(0) final bool? included,
      @HiveField(1) final String? amount,
      @HiveField(2) final String? currency,
      @HiveField(3) final String? clientAmount,
      @HiveField(4) final String? clientCurrency}) = _$_Tax;

  factory _Tax.fromJson(Map<String, dynamic> json) = _$_Tax.fromJson;

  @override
  @HiveField(0)
  bool? get included;
  @override
  @HiveField(1)
  String? get amount;
  @override
  @HiveField(2)
  String? get currency;
  @override
  @HiveField(3)
  String? get clientAmount;
  @override
  @HiveField(4)
  String? get clientCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_TaxCopyWith<_$_Tax> get copyWith => throw _privateConstructorUsedError;
}
