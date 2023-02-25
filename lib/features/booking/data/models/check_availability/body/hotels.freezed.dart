// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotels _$HotelsFromJson(Map<String, dynamic> json) {
  return _Hotels.fromJson(json);
}

/// @nodoc
mixin _$Hotels {
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsCopyWith<Hotels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsCopyWith<$Res> {
  factory $HotelsCopyWith(Hotels value, $Res Function(Hotels) then) =
      _$HotelsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'hotel') List<int>? availabilityBodyHotel});
}

/// @nodoc
class _$HotelsCopyWithImpl<$Res> implements $HotelsCopyWith<$Res> {
  _$HotelsCopyWithImpl(this._value, this._then);

  final Hotels _value;
  // ignore: unused_field
  final $Res Function(Hotels) _then;

  @override
  $Res call({
    Object? availabilityBodyHotel = freezed,
  }) {
    return _then(_value.copyWith(
      availabilityBodyHotel: availabilityBodyHotel == freezed
          ? _value.availabilityBodyHotel
          : availabilityBodyHotel // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HotelsCopyWith<$Res> implements $HotelsCopyWith<$Res> {
  factory _$$_HotelsCopyWith(_$_Hotels value, $Res Function(_$_Hotels) then) =
      __$$_HotelsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'hotel') List<int>? availabilityBodyHotel});
}

/// @nodoc
class __$$_HotelsCopyWithImpl<$Res> extends _$HotelsCopyWithImpl<$Res>
    implements _$$_HotelsCopyWith<$Res> {
  __$$_HotelsCopyWithImpl(_$_Hotels _value, $Res Function(_$_Hotels) _then)
      : super(_value, (v) => _then(v as _$_Hotels));

  @override
  _$_Hotels get _value => super._value as _$_Hotels;

  @override
  $Res call({
    Object? availabilityBodyHotel = freezed,
  }) {
    return _then(_$_Hotels(
      availabilityBodyHotel: availabilityBodyHotel == freezed
          ? _value._availabilityBodyHotel
          : availabilityBodyHotel // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hotels implements _Hotels {
  _$_Hotels({@JsonKey(name: 'hotel') final List<int>? availabilityBodyHotel})
      : _availabilityBodyHotel = availabilityBodyHotel;

  factory _$_Hotels.fromJson(Map<String, dynamic> json) =>
      _$$_HotelsFromJson(json);

  final List<int>? _availabilityBodyHotel;
  @override
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel {
    final value = _availabilityBodyHotel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hotels(availabilityBodyHotel: $availabilityBodyHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotels &&
            const DeepCollectionEquality()
                .equals(other._availabilityBodyHotel, _availabilityBodyHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availabilityBodyHotel));

  @JsonKey(ignore: true)
  @override
  _$$_HotelsCopyWith<_$_Hotels> get copyWith =>
      __$$_HotelsCopyWithImpl<_$_Hotels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelsToJson(
      this,
    );
  }
}

abstract class _Hotels implements Hotels {
  factory _Hotels(
          {@JsonKey(name: 'hotel') final List<int>? availabilityBodyHotel}) =
      _$_Hotels;

  factory _Hotels.fromJson(Map<String, dynamic> json) = _$_Hotels.fromJson;

  @override
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelsCopyWith<_$_Hotels> get copyWith =>
      throw _privateConstructorUsedError;
}
