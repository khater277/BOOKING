// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stay _$StayFromJson(Map<String, dynamic> json) {
  return _Stay.fromJson(json);
}

/// @nodoc
mixin _$Stay {
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StayCopyWith<Stay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StayCopyWith<$Res> {
  factory $StayCopyWith(Stay value, $Res Function(Stay) then) =
      _$StayCopyWithImpl<$Res>;
  $Res call({String? checkIn, String? checkOut});
}

/// @nodoc
class _$StayCopyWithImpl<$Res> implements $StayCopyWith<$Res> {
  _$StayCopyWithImpl(this._value, this._then);

  final Stay _value;
  // ignore: unused_field
  final $Res Function(Stay) _then;

  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StayCopyWith<$Res> implements $StayCopyWith<$Res> {
  factory _$$_StayCopyWith(_$_Stay value, $Res Function(_$_Stay) then) =
      __$$_StayCopyWithImpl<$Res>;
  @override
  $Res call({String? checkIn, String? checkOut});
}

/// @nodoc
class __$$_StayCopyWithImpl<$Res> extends _$StayCopyWithImpl<$Res>
    implements _$$_StayCopyWith<$Res> {
  __$$_StayCopyWithImpl(_$_Stay _value, $Res Function(_$_Stay) _then)
      : super(_value, (v) => _then(v as _$_Stay));

  @override
  _$_Stay get _value => super._value as _$_Stay;

  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$_Stay(
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stay implements _Stay {
  _$_Stay({this.checkIn, this.checkOut});

  factory _$_Stay.fromJson(Map<String, dynamic> json) => _$$_StayFromJson(json);

  @override
  final String? checkIn;
  @override
  final String? checkOut;

  @override
  String toString() {
    return 'Stay(checkIn: $checkIn, checkOut: $checkOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stay &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(checkOut));

  @JsonKey(ignore: true)
  @override
  _$$_StayCopyWith<_$_Stay> get copyWith =>
      __$$_StayCopyWithImpl<_$_Stay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StayToJson(
      this,
    );
  }
}

abstract class _Stay implements Stay {
  factory _Stay({final String? checkIn, final String? checkOut}) = _$_Stay;

  factory _Stay.fromJson(Map<String, dynamic> json) = _$_Stay.fromJson;

  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  @JsonKey(ignore: true)
  _$$_StayCopyWith<_$_Stay> get copyWith => throw _privateConstructorUsedError;
}
