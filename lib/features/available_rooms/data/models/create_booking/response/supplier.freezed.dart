// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supplier _$SupplierFromJson(Map<String, dynamic> json) {
  return _Supplier.fromJson(json);
}

/// @nodoc
mixin _$Supplier {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get vatNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierCopyWith<Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierCopyWith<$Res> {
  factory $SupplierCopyWith(Supplier value, $Res Function(Supplier) then) =
      _$SupplierCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? name, @HiveField(1) String? vatNumber});
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res> implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._value, this._then);

  final Supplier _value;
  // ignore: unused_field
  final $Res Function(Supplier) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? vatNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SupplierCopyWith<$Res> implements $SupplierCopyWith<$Res> {
  factory _$$_SupplierCopyWith(
          _$_Supplier value, $Res Function(_$_Supplier) then) =
      __$$_SupplierCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? name, @HiveField(1) String? vatNumber});
}

/// @nodoc
class __$$_SupplierCopyWithImpl<$Res> extends _$SupplierCopyWithImpl<$Res>
    implements _$$_SupplierCopyWith<$Res> {
  __$$_SupplierCopyWithImpl(
      _$_Supplier _value, $Res Function(_$_Supplier) _then)
      : super(_value, (v) => _then(v as _$_Supplier));

  @override
  _$_Supplier get _value => super._value as _$_Supplier;

  @override
  $Res call({
    Object? name = freezed,
    Object? vatNumber = freezed,
  }) {
    return _then(_$_Supplier(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supplier implements _Supplier {
  _$_Supplier({@HiveField(0) this.name, @HiveField(1) this.vatNumber});

  factory _$_Supplier.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierFromJson(json);

  @override
  @HiveField(0)
  final String? name;
  @override
  @HiveField(1)
  final String? vatNumber;

  @override
  String toString() {
    return 'Supplier(name: $name, vatNumber: $vatNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Supplier &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.vatNumber, vatNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(vatNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      __$$_SupplierCopyWithImpl<_$_Supplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierToJson(
      this,
    );
  }
}

abstract class _Supplier implements Supplier {
  factory _Supplier(
      {@HiveField(0) final String? name,
      @HiveField(1) final String? vatNumber}) = _$_Supplier;

  factory _Supplier.fromJson(Map<String, dynamic> json) = _$_Supplier.fromJson;

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  String? get vatNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}
