// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'holder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Holder _$HolderFromJson(Map<String, dynamic> json) {
  return _Holder.fromJson(json);
}

/// @nodoc
mixin _$Holder {
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolderCopyWith<Holder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolderCopyWith<$Res> {
  factory $HolderCopyWith(Holder value, $Res Function(Holder) then) =
      _$HolderCopyWithImpl<$Res>;
  $Res call({String? name, String? surname});
}

/// @nodoc
class _$HolderCopyWithImpl<$Res> implements $HolderCopyWith<$Res> {
  _$HolderCopyWithImpl(this._value, this._then);

  final Holder _value;
  // ignore: unused_field
  final $Res Function(Holder) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_HolderCopyWith<$Res> implements $HolderCopyWith<$Res> {
  factory _$$_HolderCopyWith(_$_Holder value, $Res Function(_$_Holder) then) =
      __$$_HolderCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? surname});
}

/// @nodoc
class __$$_HolderCopyWithImpl<$Res> extends _$HolderCopyWithImpl<$Res>
    implements _$$_HolderCopyWith<$Res> {
  __$$_HolderCopyWithImpl(_$_Holder _value, $Res Function(_$_Holder) _then)
      : super(_value, (v) => _then(v as _$_Holder));

  @override
  _$_Holder get _value => super._value as _$_Holder;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$_Holder(
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
class _$_Holder implements _Holder {
  _$_Holder({this.name, this.surname});

  factory _$_Holder.fromJson(Map<String, dynamic> json) =>
      _$$_HolderFromJson(json);

  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'Holder(name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Holder &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname));

  @JsonKey(ignore: true)
  @override
  _$$_HolderCopyWith<_$_Holder> get copyWith =>
      __$$_HolderCopyWithImpl<_$_Holder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolderToJson(
      this,
    );
  }
}

abstract class _Holder implements Holder {
  factory _Holder({final String? name, final String? surname}) = _$_Holder;

  factory _Holder.fromJson(Map<String, dynamic> json) = _$_Holder.fromJson;

  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$_HolderCopyWith<_$_Holder> get copyWith =>
      throw _privateConstructorUsedError;
}
