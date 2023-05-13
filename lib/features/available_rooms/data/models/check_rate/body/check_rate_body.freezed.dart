// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_rate_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckRateBody _$CheckRateBodyFromJson(Map<String, dynamic> json) {
  return _CheckRateBody.fromJson(json);
}

/// @nodoc
mixin _$CheckRateBody {
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckRateBodyCopyWith<CheckRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRateBodyCopyWith<$Res> {
  factory $CheckRateBodyCopyWith(
          CheckRateBody value, $Res Function(CheckRateBody) then) =
      _$CheckRateBodyCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'rooms') List<RateRoom>? rateRooms});
}

/// @nodoc
class _$CheckRateBodyCopyWithImpl<$Res>
    implements $CheckRateBodyCopyWith<$Res> {
  _$CheckRateBodyCopyWithImpl(this._value, this._then);

  final CheckRateBody _value;
  // ignore: unused_field
  final $Res Function(CheckRateBody) _then;

  @override
  $Res call({
    Object? rateRooms = freezed,
  }) {
    return _then(_value.copyWith(
      rateRooms: rateRooms == freezed
          ? _value.rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CheckRateBodyCopyWith<$Res>
    implements $CheckRateBodyCopyWith<$Res> {
  factory _$$_CheckRateBodyCopyWith(
          _$_CheckRateBody value, $Res Function(_$_CheckRateBody) then) =
      __$$_CheckRateBodyCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'rooms') List<RateRoom>? rateRooms});
}

/// @nodoc
class __$$_CheckRateBodyCopyWithImpl<$Res>
    extends _$CheckRateBodyCopyWithImpl<$Res>
    implements _$$_CheckRateBodyCopyWith<$Res> {
  __$$_CheckRateBodyCopyWithImpl(
      _$_CheckRateBody _value, $Res Function(_$_CheckRateBody) _then)
      : super(_value, (v) => _then(v as _$_CheckRateBody));

  @override
  _$_CheckRateBody get _value => super._value as _$_CheckRateBody;

  @override
  $Res call({
    Object? rateRooms = freezed,
  }) {
    return _then(_$_CheckRateBody(
      rateRooms: rateRooms == freezed
          ? _value._rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckRateBody implements _CheckRateBody {
  _$_CheckRateBody({@JsonKey(name: 'rooms') final List<RateRoom>? rateRooms})
      : _rateRooms = rateRooms;

  factory _$_CheckRateBody.fromJson(Map<String, dynamic> json) =>
      _$$_CheckRateBodyFromJson(json);

  final List<RateRoom>? _rateRooms;
  @override
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms {
    final value = _rateRooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CheckRateBody(rateRooms: $rateRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckRateBody &&
            const DeepCollectionEquality()
                .equals(other._rateRooms, _rateRooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rateRooms));

  @JsonKey(ignore: true)
  @override
  _$$_CheckRateBodyCopyWith<_$_CheckRateBody> get copyWith =>
      __$$_CheckRateBodyCopyWithImpl<_$_CheckRateBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckRateBodyToJson(
      this,
    );
  }
}

abstract class _CheckRateBody implements CheckRateBody {
  factory _CheckRateBody(
          {@JsonKey(name: 'rooms') final List<RateRoom>? rateRooms}) =
      _$_CheckRateBody;

  factory _CheckRateBody.fromJson(Map<String, dynamic> json) =
      _$_CheckRateBody.fromJson;

  @override
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms;
  @override
  @JsonKey(ignore: true)
  _$$_CheckRateBodyCopyWith<_$_CheckRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}
