// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pax _$PaxFromJson(Map<String, dynamic> json) {
  return _Pax.fromJson(json);
}

/// @nodoc
mixin _$Pax {
  int? get roomId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaxCopyWith<Pax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaxCopyWith<$Res> {
  factory $PaxCopyWith(Pax value, $Res Function(Pax) then) =
      _$PaxCopyWithImpl<$Res>;
  $Res call({int? roomId, String? type, String? name, String? surname});
}

/// @nodoc
class _$PaxCopyWithImpl<$Res> implements $PaxCopyWith<$Res> {
  _$PaxCopyWithImpl(this._value, this._then);

  final Pax _value;
  // ignore: unused_field
  final $Res Function(Pax) _then;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaxCopyWith<$Res> implements $PaxCopyWith<$Res> {
  factory _$$_PaxCopyWith(_$_Pax value, $Res Function(_$_Pax) then) =
      __$$_PaxCopyWithImpl<$Res>;
  @override
  $Res call({int? roomId, String? type, String? name, String? surname});
}

/// @nodoc
class __$$_PaxCopyWithImpl<$Res> extends _$PaxCopyWithImpl<$Res>
    implements _$$_PaxCopyWith<$Res> {
  __$$_PaxCopyWithImpl(_$_Pax _value, $Res Function(_$_Pax) _then)
      : super(_value, (v) => _then(v as _$_Pax));

  @override
  _$_Pax get _value => super._value as _$_Pax;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$_Pax(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pax implements _Pax {
  _$_Pax({this.roomId, this.type, this.name, this.surname});

  factory _$_Pax.fromJson(Map<String, dynamic> json) => _$$_PaxFromJson(json);

  @override
  final int? roomId;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'Pax(roomId: $roomId, type: $type, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pax &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname));

  @JsonKey(ignore: true)
  @override
  _$$_PaxCopyWith<_$_Pax> get copyWith =>
      __$$_PaxCopyWithImpl<_$_Pax>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaxToJson(
      this,
    );
  }
}

abstract class _Pax implements Pax {
  factory _Pax(
      {final int? roomId,
      final String? type,
      final String? name,
      final String? surname}) = _$_Pax;

  factory _Pax.fromJson(Map<String, dynamic> json) = _$_Pax.fromJson;

  @override
  int? get roomId;
  @override
  String? get type;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$_PaxCopyWith<_$_Pax> get copyWith => throw _privateConstructorUsedError;
}
