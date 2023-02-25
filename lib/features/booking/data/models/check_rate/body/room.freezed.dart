// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateRoom _$RateRoomFromJson(Map<String, dynamic> json) {
  return _RateRoom.fromJson(json);
}

/// @nodoc
mixin _$RateRoom {
  String? get rateKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateRoomCopyWith<RateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateRoomCopyWith<$Res> {
  factory $RateRoomCopyWith(RateRoom value, $Res Function(RateRoom) then) =
      _$RateRoomCopyWithImpl<$Res>;
  $Res call({String? rateKey});
}

/// @nodoc
class _$RateRoomCopyWithImpl<$Res> implements $RateRoomCopyWith<$Res> {
  _$RateRoomCopyWithImpl(this._value, this._then);

  final RateRoom _value;
  // ignore: unused_field
  final $Res Function(RateRoom) _then;

  @override
  $Res call({
    Object? rateKey = freezed,
  }) {
    return _then(_value.copyWith(
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RateRoomCopyWith<$Res> implements $RateRoomCopyWith<$Res> {
  factory _$$_RateRoomCopyWith(
          _$_RateRoom value, $Res Function(_$_RateRoom) then) =
      __$$_RateRoomCopyWithImpl<$Res>;
  @override
  $Res call({String? rateKey});
}

/// @nodoc
class __$$_RateRoomCopyWithImpl<$Res> extends _$RateRoomCopyWithImpl<$Res>
    implements _$$_RateRoomCopyWith<$Res> {
  __$$_RateRoomCopyWithImpl(
      _$_RateRoom _value, $Res Function(_$_RateRoom) _then)
      : super(_value, (v) => _then(v as _$_RateRoom));

  @override
  _$_RateRoom get _value => super._value as _$_RateRoom;

  @override
  $Res call({
    Object? rateKey = freezed,
  }) {
    return _then(_$_RateRoom(
      rateKey: rateKey == freezed
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateRoom implements _RateRoom {
  _$_RateRoom({this.rateKey});

  factory _$_RateRoom.fromJson(Map<String, dynamic> json) =>
      _$$_RateRoomFromJson(json);

  @override
  final String? rateKey;

  @override
  String toString() {
    return 'RateRoom(rateKey: $rateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateRoom &&
            const DeepCollectionEquality().equals(other.rateKey, rateKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rateKey));

  @JsonKey(ignore: true)
  @override
  _$$_RateRoomCopyWith<_$_RateRoom> get copyWith =>
      __$$_RateRoomCopyWithImpl<_$_RateRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RateRoomToJson(
      this,
    );
  }
}

abstract class _RateRoom implements RateRoom {
  factory _RateRoom({final String? rateKey}) = _$_RateRoom;

  factory _RateRoom.fromJson(Map<String, dynamic> json) = _$_RateRoom.fromJson;

  @override
  String? get rateKey;
  @override
  @JsonKey(ignore: true)
  _$$_RateRoomCopyWith<_$_RateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
