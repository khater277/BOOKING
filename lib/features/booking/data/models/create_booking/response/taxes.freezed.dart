// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'taxes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Taxes _$TaxesFromJson(Map<String, dynamic> json) {
  return _Taxes.fromJson(json);
}

/// @nodoc
mixin _$Taxes {
  @HiveField(0)
  List<Tax>? get taxes => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get allIncluded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxesCopyWith<Taxes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxesCopyWith<$Res> {
  factory $TaxesCopyWith(Taxes value, $Res Function(Taxes) then) =
      _$TaxesCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tax>? taxes, @HiveField(1) bool? allIncluded});
}

/// @nodoc
class _$TaxesCopyWithImpl<$Res> implements $TaxesCopyWith<$Res> {
  _$TaxesCopyWithImpl(this._value, this._then);

  final Taxes _value;
  // ignore: unused_field
  final $Res Function(Taxes) _then;

  @override
  $Res call({
    Object? taxes = freezed,
    Object? allIncluded = freezed,
  }) {
    return _then(_value.copyWith(
      taxes: taxes == freezed
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      allIncluded: allIncluded == freezed
          ? _value.allIncluded
          : allIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaxesCopyWith<$Res> implements $TaxesCopyWith<$Res> {
  factory _$$_TaxesCopyWith(_$_Taxes value, $Res Function(_$_Taxes) then) =
      __$$_TaxesCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tax>? taxes, @HiveField(1) bool? allIncluded});
}

/// @nodoc
class __$$_TaxesCopyWithImpl<$Res> extends _$TaxesCopyWithImpl<$Res>
    implements _$$_TaxesCopyWith<$Res> {
  __$$_TaxesCopyWithImpl(_$_Taxes _value, $Res Function(_$_Taxes) _then)
      : super(_value, (v) => _then(v as _$_Taxes));

  @override
  _$_Taxes get _value => super._value as _$_Taxes;

  @override
  $Res call({
    Object? taxes = freezed,
    Object? allIncluded = freezed,
  }) {
    return _then(_$_Taxes(
      taxes: taxes == freezed
          ? _value._taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      allIncluded: allIncluded == freezed
          ? _value.allIncluded
          : allIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Taxes implements _Taxes {
  _$_Taxes(
      {@HiveField(0) final List<Tax>? taxes, @HiveField(1) this.allIncluded})
      : _taxes = taxes;

  factory _$_Taxes.fromJson(Map<String, dynamic> json) =>
      _$$_TaxesFromJson(json);

  final List<Tax>? _taxes;
  @override
  @HiveField(0)
  List<Tax>? get taxes {
    final value = _taxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(1)
  final bool? allIncluded;

  @override
  String toString() {
    return 'Taxes(taxes: $taxes, allIncluded: $allIncluded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Taxes &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            const DeepCollectionEquality()
                .equals(other.allIncluded, allIncluded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taxes),
      const DeepCollectionEquality().hash(allIncluded));

  @JsonKey(ignore: true)
  @override
  _$$_TaxesCopyWith<_$_Taxes> get copyWith =>
      __$$_TaxesCopyWithImpl<_$_Taxes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxesToJson(
      this,
    );
  }
}

abstract class _Taxes implements Taxes {
  factory _Taxes(
      {@HiveField(0) final List<Tax>? taxes,
      @HiveField(1) final bool? allIncluded}) = _$_Taxes;

  factory _Taxes.fromJson(Map<String, dynamic> json) = _$_Taxes.fromJson;

  @override
  @HiveField(0)
  List<Tax>? get taxes;
  @override
  @HiveField(1)
  bool? get allIncluded;
  @override
  @JsonKey(ignore: true)
  _$$_TaxesCopyWith<_$_Taxes> get copyWith =>
      throw _privateConstructorUsedError;
}
