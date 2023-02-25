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
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Rate>? get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateRoomCopyWith<RateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateRoomCopyWith<$Res> {
  factory $RateRoomCopyWith(RateRoom value, $Res Function(RateRoom) then) =
      _$RateRoomCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? name,
      @HiveField(2) List<Rate>? rates});
}

/// @nodoc
class _$RateRoomCopyWithImpl<$Res> implements $RateRoomCopyWith<$Res> {
  _$RateRoomCopyWithImpl(this._value, this._then);

  final RateRoom _value;
  // ignore: unused_field
  final $Res Function(RateRoom) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? rates = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RateRoomCopyWith<$Res> implements $RateRoomCopyWith<$Res> {
  factory _$$_RateRoomCopyWith(
          _$_RateRoom value, $Res Function(_$_RateRoom) then) =
      __$$_RateRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? name,
      @HiveField(2) List<Rate>? rates});
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
    Object? code = freezed,
    Object? name = freezed,
    Object? rates = freezed,
  }) {
    return _then(_$_RateRoom(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: rates == freezed
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateRoom implements _RateRoom {
  _$_RateRoom(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) final List<Rate>? rates})
      : _rates = rates;

  factory _$_RateRoom.fromJson(Map<String, dynamic> json) =>
      _$$_RateRoomFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final String? name;
  final List<Rate>? _rates;
  @override
  @HiveField(2)
  List<Rate>? get rates {
    final value = _rates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RateRoom(code: $code, name: $name, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateRoom &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_rates));

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
  factory _RateRoom(
      {@HiveField(0) final String? code,
      @HiveField(1) final String? name,
      @HiveField(2) final List<Rate>? rates}) = _$_RateRoom;

  factory _RateRoom.fromJson(Map<String, dynamic> json) = _$_RateRoom.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  List<Rate>? get rates;
  @override
  @JsonKey(ignore: true)
  _$$_RateRoomCopyWith<_$_RateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
