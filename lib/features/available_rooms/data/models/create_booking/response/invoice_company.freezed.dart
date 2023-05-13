// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceCompany _$InvoiceCompanyFromJson(Map<String, dynamic> json) {
  return _InvoiceCompany.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCompany {
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get company => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get registrationNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCompanyCopyWith<InvoiceCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCompanyCopyWith<$Res> {
  factory $InvoiceCompanyCopyWith(
          InvoiceCompany value, $Res Function(InvoiceCompany) then) =
      _$InvoiceCompanyCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? company,
      @HiveField(2) String? registrationNumber});
}

/// @nodoc
class _$InvoiceCompanyCopyWithImpl<$Res>
    implements $InvoiceCompanyCopyWith<$Res> {
  _$InvoiceCompanyCopyWithImpl(this._value, this._then);

  final InvoiceCompany _value;
  // ignore: unused_field
  final $Res Function(InvoiceCompany) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? company = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: registrationNumber == freezed
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceCompanyCopyWith<$Res>
    implements $InvoiceCompanyCopyWith<$Res> {
  factory _$$_InvoiceCompanyCopyWith(
          _$_InvoiceCompany value, $Res Function(_$_InvoiceCompany) then) =
      __$$_InvoiceCompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? company,
      @HiveField(2) String? registrationNumber});
}

/// @nodoc
class __$$_InvoiceCompanyCopyWithImpl<$Res>
    extends _$InvoiceCompanyCopyWithImpl<$Res>
    implements _$$_InvoiceCompanyCopyWith<$Res> {
  __$$_InvoiceCompanyCopyWithImpl(
      _$_InvoiceCompany _value, $Res Function(_$_InvoiceCompany) _then)
      : super(_value, (v) => _then(v as _$_InvoiceCompany));

  @override
  _$_InvoiceCompany get _value => super._value as _$_InvoiceCompany;

  @override
  $Res call({
    Object? code = freezed,
    Object? company = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_$_InvoiceCompany(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: registrationNumber == freezed
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceCompany implements _InvoiceCompany {
  _$_InvoiceCompany(
      {@HiveField(0) this.code,
      @HiveField(1) this.company,
      @HiveField(2) this.registrationNumber});

  factory _$_InvoiceCompany.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceCompanyFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final String? company;
  @override
  @HiveField(2)
  final String? registrationNumber;

  @override
  String toString() {
    return 'InvoiceCompany(code: $code, company: $company, registrationNumber: $registrationNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceCompany &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality()
                .equals(other.registrationNumber, registrationNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(registrationNumber));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceCompanyCopyWith<_$_InvoiceCompany> get copyWith =>
      __$$_InvoiceCompanyCopyWithImpl<_$_InvoiceCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceCompanyToJson(
      this,
    );
  }
}

abstract class _InvoiceCompany implements InvoiceCompany {
  factory _InvoiceCompany(
      {@HiveField(0) final String? code,
      @HiveField(1) final String? company,
      @HiveField(2) final String? registrationNumber}) = _$_InvoiceCompany;

  factory _InvoiceCompany.fromJson(Map<String, dynamic> json) =
      _$_InvoiceCompany.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  String? get company;
  @override
  @HiveField(2)
  String? get registrationNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCompanyCopyWith<_$_InvoiceCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
