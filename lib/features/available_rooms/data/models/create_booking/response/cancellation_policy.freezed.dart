// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cancellation_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancellationPolicy _$CancellationPolicyFromJson(Map<String, dynamic> json) {
  return _CancellationPolicy.fromJson(json);
}

/// @nodoc
mixin _$CancellationPolicy {
  @HiveField(0)
  String? get amount => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancellationPolicyCopyWith<CancellationPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationPolicyCopyWith<$Res> {
  factory $CancellationPolicyCopyWith(
          CancellationPolicy value, $Res Function(CancellationPolicy) then) =
      _$CancellationPolicyCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? amount, @HiveField(1) String? from});
}

/// @nodoc
class _$CancellationPolicyCopyWithImpl<$Res>
    implements $CancellationPolicyCopyWith<$Res> {
  _$CancellationPolicyCopyWithImpl(this._value, this._then);

  final CancellationPolicy _value;
  // ignore: unused_field
  final $Res Function(CancellationPolicy) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CancellationPolicyCopyWith<$Res>
    implements $CancellationPolicyCopyWith<$Res> {
  factory _$$_CancellationPolicyCopyWith(_$_CancellationPolicy value,
          $Res Function(_$_CancellationPolicy) then) =
      __$$_CancellationPolicyCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? amount, @HiveField(1) String? from});
}

/// @nodoc
class __$$_CancellationPolicyCopyWithImpl<$Res>
    extends _$CancellationPolicyCopyWithImpl<$Res>
    implements _$$_CancellationPolicyCopyWith<$Res> {
  __$$_CancellationPolicyCopyWithImpl(
      _$_CancellationPolicy _value, $Res Function(_$_CancellationPolicy) _then)
      : super(_value, (v) => _then(v as _$_CancellationPolicy));

  @override
  _$_CancellationPolicy get _value => super._value as _$_CancellationPolicy;

  @override
  $Res call({
    Object? amount = freezed,
    Object? from = freezed,
  }) {
    return _then(_$_CancellationPolicy(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancellationPolicy implements _CancellationPolicy {
  _$_CancellationPolicy({@HiveField(0) this.amount, @HiveField(1) this.from});

  factory _$_CancellationPolicy.fromJson(Map<String, dynamic> json) =>
      _$$_CancellationPolicyFromJson(json);

  @override
  @HiveField(0)
  final String? amount;
  @override
  @HiveField(1)
  final String? from;

  @override
  String toString() {
    return 'CancellationPolicy(amount: $amount, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancellationPolicy &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.from, from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(from));

  @JsonKey(ignore: true)
  @override
  _$$_CancellationPolicyCopyWith<_$_CancellationPolicy> get copyWith =>
      __$$_CancellationPolicyCopyWithImpl<_$_CancellationPolicy>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancellationPolicyToJson(
      this,
    );
  }
}

abstract class _CancellationPolicy implements CancellationPolicy {
  factory _CancellationPolicy(
      {@HiveField(0) final String? amount,
      @HiveField(1) final String? from}) = _$_CancellationPolicy;

  factory _CancellationPolicy.fromJson(Map<String, dynamic> json) =
      _$_CancellationPolicy.fromJson;

  @override
  @HiveField(0)
  String? get amount;
  @override
  @HiveField(1)
  String? get from;
  @override
  @JsonKey(ignore: true)
  _$$_CancellationPolicyCopyWith<_$_CancellationPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}
