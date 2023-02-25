// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'occupancy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occupancy _$OccupancyFromJson(Map<String, dynamic> json) {
  return _Occupancy.fromJson(json);
}

/// @nodoc
mixin _$Occupancy {
  int? get rooms => throw _privateConstructorUsedError;
  int? get adults => throw _privateConstructorUsedError;
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupancyCopyWith<Occupancy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupancyCopyWith<$Res> {
  factory $OccupancyCopyWith(Occupancy value, $Res Function(Occupancy) then) =
      _$OccupancyCopyWithImpl<$Res>;
  $Res call({int? rooms, int? adults, int? children});
}

/// @nodoc
class _$OccupancyCopyWithImpl<$Res> implements $OccupancyCopyWith<$Res> {
  _$OccupancyCopyWithImpl(this._value, this._then);

  final Occupancy _value;
  // ignore: unused_field
  final $Res Function(Occupancy) _then;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OccupancyCopyWith<$Res> implements $OccupancyCopyWith<$Res> {
  factory _$$_OccupancyCopyWith(
          _$_Occupancy value, $Res Function(_$_Occupancy) then) =
      __$$_OccupancyCopyWithImpl<$Res>;
  @override
  $Res call({int? rooms, int? adults, int? children});
}

/// @nodoc
class __$$_OccupancyCopyWithImpl<$Res> extends _$OccupancyCopyWithImpl<$Res>
    implements _$$_OccupancyCopyWith<$Res> {
  __$$_OccupancyCopyWithImpl(
      _$_Occupancy _value, $Res Function(_$_Occupancy) _then)
      : super(_value, (v) => _then(v as _$_Occupancy));

  @override
  _$_Occupancy get _value => super._value as _$_Occupancy;

  @override
  $Res call({
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_Occupancy(
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: adults == freezed
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occupancy implements _Occupancy {
  _$_Occupancy({this.rooms, this.adults, this.children});

  factory _$_Occupancy.fromJson(Map<String, dynamic> json) =>
      _$$_OccupancyFromJson(json);

  @override
  final int? rooms;
  @override
  final int? adults;
  @override
  final int? children;

  @override
  String toString() {
    return 'Occupancy(rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Occupancy &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            const DeepCollectionEquality().equals(other.adults, adults) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rooms),
      const DeepCollectionEquality().hash(adults),
      const DeepCollectionEquality().hash(children));

  @JsonKey(ignore: true)
  @override
  _$$_OccupancyCopyWith<_$_Occupancy> get copyWith =>
      __$$_OccupancyCopyWithImpl<_$_Occupancy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccupancyToJson(
      this,
    );
  }
}

abstract class _Occupancy implements Occupancy {
  factory _Occupancy(
      {final int? rooms,
      final int? adults,
      final int? children}) = _$_Occupancy;

  factory _Occupancy.fromJson(Map<String, dynamic> json) =
      _$_Occupancy.fromJson;

  @override
  int? get rooms;
  @override
  int? get adults;
  @override
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$_OccupancyCopyWith<_$_Occupancy> get copyWith =>
      throw _privateConstructorUsedError;
}
