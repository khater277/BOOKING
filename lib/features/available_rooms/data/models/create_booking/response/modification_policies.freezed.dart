// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'modification_policies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModificationPolicies _$ModificationPoliciesFromJson(Map<String, dynamic> json) {
  return _ModificationPolicies.fromJson(json);
}

/// @nodoc
mixin _$ModificationPolicies {
  @HiveField(0)
  bool? get cancellation => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get modification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModificationPoliciesCopyWith<ModificationPolicies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModificationPoliciesCopyWith<$Res> {
  factory $ModificationPoliciesCopyWith(ModificationPolicies value,
          $Res Function(ModificationPolicies) then) =
      _$ModificationPoliciesCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) bool? cancellation, @HiveField(1) bool? modification});
}

/// @nodoc
class _$ModificationPoliciesCopyWithImpl<$Res>
    implements $ModificationPoliciesCopyWith<$Res> {
  _$ModificationPoliciesCopyWithImpl(this._value, this._then);

  final ModificationPolicies _value;
  // ignore: unused_field
  final $Res Function(ModificationPolicies) _then;

  @override
  $Res call({
    Object? cancellation = freezed,
    Object? modification = freezed,
  }) {
    return _then(_value.copyWith(
      cancellation: cancellation == freezed
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as bool?,
      modification: modification == freezed
          ? _value.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ModificationPoliciesCopyWith<$Res>
    implements $ModificationPoliciesCopyWith<$Res> {
  factory _$$_ModificationPoliciesCopyWith(_$_ModificationPolicies value,
          $Res Function(_$_ModificationPolicies) then) =
      __$$_ModificationPoliciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) bool? cancellation, @HiveField(1) bool? modification});
}

/// @nodoc
class __$$_ModificationPoliciesCopyWithImpl<$Res>
    extends _$ModificationPoliciesCopyWithImpl<$Res>
    implements _$$_ModificationPoliciesCopyWith<$Res> {
  __$$_ModificationPoliciesCopyWithImpl(_$_ModificationPolicies _value,
      $Res Function(_$_ModificationPolicies) _then)
      : super(_value, (v) => _then(v as _$_ModificationPolicies));

  @override
  _$_ModificationPolicies get _value => super._value as _$_ModificationPolicies;

  @override
  $Res call({
    Object? cancellation = freezed,
    Object? modification = freezed,
  }) {
    return _then(_$_ModificationPolicies(
      cancellation: cancellation == freezed
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as bool?,
      modification: modification == freezed
          ? _value.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModificationPolicies implements _ModificationPolicies {
  _$_ModificationPolicies(
      {@HiveField(0) this.cancellation, @HiveField(1) this.modification});

  factory _$_ModificationPolicies.fromJson(Map<String, dynamic> json) =>
      _$$_ModificationPoliciesFromJson(json);

  @override
  @HiveField(0)
  final bool? cancellation;
  @override
  @HiveField(1)
  final bool? modification;

  @override
  String toString() {
    return 'ModificationPolicies(cancellation: $cancellation, modification: $modification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModificationPolicies &&
            const DeepCollectionEquality()
                .equals(other.cancellation, cancellation) &&
            const DeepCollectionEquality()
                .equals(other.modification, modification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cancellation),
      const DeepCollectionEquality().hash(modification));

  @JsonKey(ignore: true)
  @override
  _$$_ModificationPoliciesCopyWith<_$_ModificationPolicies> get copyWith =>
      __$$_ModificationPoliciesCopyWithImpl<_$_ModificationPolicies>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModificationPoliciesToJson(
      this,
    );
  }
}

abstract class _ModificationPolicies implements ModificationPolicies {
  factory _ModificationPolicies(
      {@HiveField(0) final bool? cancellation,
      @HiveField(1) final bool? modification}) = _$_ModificationPolicies;

  factory _ModificationPolicies.fromJson(Map<String, dynamic> json) =
      _$_ModificationPolicies.fromJson;

  @override
  @HiveField(0)
  bool? get cancellation;
  @override
  @HiveField(1)
  bool? get modification;
  @override
  @JsonKey(ignore: true)
  _$$_ModificationPoliciesCopyWith<_$_ModificationPolicies> get copyWith =>
      throw _privateConstructorUsedError;
}
