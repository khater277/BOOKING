// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pop_up_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopUpInfo {
  @HiveField(0)
  String? get text => throw _privateConstructorUsedError;
  @HiveField(1)
  IconData? get icon => throw _privateConstructorUsedError;
  @HiveField(2)
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopUpInfoCopyWith<PopUpInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopUpInfoCopyWith<$Res> {
  factory $PopUpInfoCopyWith(PopUpInfo value, $Res Function(PopUpInfo) then) =
      _$PopUpInfoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? text,
      @HiveField(1) IconData? icon,
      @HiveField(2) Color? color});
}

/// @nodoc
class _$PopUpInfoCopyWithImpl<$Res> implements $PopUpInfoCopyWith<$Res> {
  _$PopUpInfoCopyWithImpl(this._value, this._then);

  final PopUpInfo _value;
  // ignore: unused_field
  final $Res Function(PopUpInfo) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
abstract class _$$_PopUpInfoCopyWith<$Res> implements $PopUpInfoCopyWith<$Res> {
  factory _$$_PopUpInfoCopyWith(
          _$_PopUpInfo value, $Res Function(_$_PopUpInfo) then) =
      __$$_PopUpInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? text,
      @HiveField(1) IconData? icon,
      @HiveField(2) Color? color});
}

/// @nodoc
class __$$_PopUpInfoCopyWithImpl<$Res> extends _$PopUpInfoCopyWithImpl<$Res>
    implements _$$_PopUpInfoCopyWith<$Res> {
  __$$_PopUpInfoCopyWithImpl(
      _$_PopUpInfo _value, $Res Function(_$_PopUpInfo) _then)
      : super(_value, (v) => _then(v as _$_PopUpInfo));

  @override
  _$_PopUpInfo get _value => super._value as _$_PopUpInfo;

  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_PopUpInfo(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_PopUpInfo implements _PopUpInfo {
  _$_PopUpInfo(
      {@HiveField(0) this.text,
      @HiveField(1) this.icon,
      @HiveField(2) this.color});

  @override
  @HiveField(0)
  final String? text;
  @override
  @HiveField(1)
  final IconData? icon;
  @override
  @HiveField(2)
  final Color? color;

  @override
  String toString() {
    return 'PopUpInfo(text: $text, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopUpInfo &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_PopUpInfoCopyWith<_$_PopUpInfo> get copyWith =>
      __$$_PopUpInfoCopyWithImpl<_$_PopUpInfo>(this, _$identity);
}

abstract class _PopUpInfo implements PopUpInfo {
  factory _PopUpInfo(
      {@HiveField(0) final String? text,
      @HiveField(1) final IconData? icon,
      @HiveField(2) final Color? color}) = _$_PopUpInfo;

  @override
  @HiveField(0)
  String? get text;
  @override
  @HiveField(1)
  IconData? get icon;
  @override
  @HiveField(2)
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PopUpInfoCopyWith<_$_PopUpInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
