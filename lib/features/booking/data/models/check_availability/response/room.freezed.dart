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

AvailableRoom _$AvailableRoomFromJson(Map<String, dynamic> json) {
  return _AvailableRoom.fromJson(json);
}

/// @nodoc
mixin _$AvailableRoom {
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'rates')
  @HiveField(2)
  List<AvailableRate>? get availableRates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableRoomCopyWith<AvailableRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableRoomCopyWith<$Res> {
  factory $AvailableRoomCopyWith(
          AvailableRoom value, $Res Function(AvailableRoom) then) =
      _$AvailableRoomCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
          String? code,
      @HiveField(1)
          String? name,
      @JsonKey(name: 'rates')
      @HiveField(2)
          List<AvailableRate>? availableRates});
}

/// @nodoc
class _$AvailableRoomCopyWithImpl<$Res>
    implements $AvailableRoomCopyWith<$Res> {
  _$AvailableRoomCopyWithImpl(this._value, this._then);

  final AvailableRoom _value;
  // ignore: unused_field
  final $Res Function(AvailableRoom) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? availableRates = freezed,
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
      availableRates: availableRates == freezed
          ? _value.availableRates
          : availableRates // ignore: cast_nullable_to_non_nullable
              as List<AvailableRate>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailableRoomCopyWith<$Res>
    implements $AvailableRoomCopyWith<$Res> {
  factory _$$_AvailableRoomCopyWith(
          _$_AvailableRoom value, $Res Function(_$_AvailableRoom) then) =
      __$$_AvailableRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
          String? code,
      @HiveField(1)
          String? name,
      @JsonKey(name: 'rates')
      @HiveField(2)
          List<AvailableRate>? availableRates});
}

/// @nodoc
class __$$_AvailableRoomCopyWithImpl<$Res>
    extends _$AvailableRoomCopyWithImpl<$Res>
    implements _$$_AvailableRoomCopyWith<$Res> {
  __$$_AvailableRoomCopyWithImpl(
      _$_AvailableRoom _value, $Res Function(_$_AvailableRoom) _then)
      : super(_value, (v) => _then(v as _$_AvailableRoom));

  @override
  _$_AvailableRoom get _value => super._value as _$_AvailableRoom;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? availableRates = freezed,
  }) {
    return _then(_$_AvailableRoom(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      availableRates: availableRates == freezed
          ? _value._availableRates
          : availableRates // ignore: cast_nullable_to_non_nullable
              as List<AvailableRate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableRoom implements _AvailableRoom {
  _$_AvailableRoom(
      {@HiveField(0)
          this.code,
      @HiveField(1)
          this.name,
      @JsonKey(name: 'rates')
      @HiveField(2)
          final List<AvailableRate>? availableRates})
      : _availableRates = availableRates;

  factory _$_AvailableRoom.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableRoomFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final String? name;
  final List<AvailableRate>? _availableRates;
  @override
  @JsonKey(name: 'rates')
  @HiveField(2)
  List<AvailableRate>? get availableRates {
    final value = _availableRates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvailableRoom(code: $code, name: $name, availableRates: $availableRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableRoom &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._availableRates, _availableRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_availableRates));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableRoomCopyWith<_$_AvailableRoom> get copyWith =>
      __$$_AvailableRoomCopyWithImpl<_$_AvailableRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableRoomToJson(
      this,
    );
  }
}

abstract class _AvailableRoom implements AvailableRoom {
  factory _AvailableRoom(
      {@HiveField(0)
          final String? code,
      @HiveField(1)
          final String? name,
      @JsonKey(name: 'rates')
      @HiveField(2)
          final List<AvailableRate>? availableRates}) = _$_AvailableRoom;

  factory _AvailableRoom.fromJson(Map<String, dynamic> json) =
      _$_AvailableRoom.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  String? get name;
  @override
  @JsonKey(name: 'rates')
  @HiveField(2)
  List<AvailableRate>? get availableRates;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableRoomCopyWith<_$_AvailableRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
