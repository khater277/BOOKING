// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotels_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelsParamsModel _$HotelsParamsModelFromJson(Map<String, dynamic> json) {
  return _HotelsParamsModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsParamsModel {
  List<int>? get codes => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsParamsModelCopyWith<HotelsParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsParamsModelCopyWith<$Res> {
  factory $HotelsParamsModelCopyWith(
          HotelsParamsModel value, $Res Function(HotelsParamsModel) then) =
      _$HotelsParamsModelCopyWithImpl<$Res>;
  $Res call(
      {List<int>? codes,
      String? countryCode,
      int? from,
      int? to,
      String? language});
}

/// @nodoc
class _$HotelsParamsModelCopyWithImpl<$Res>
    implements $HotelsParamsModelCopyWith<$Res> {
  _$HotelsParamsModelCopyWithImpl(this._value, this._then);

  final HotelsParamsModel _value;
  // ignore: unused_field
  final $Res Function(HotelsParamsModel) _then;

  @override
  $Res call({
    Object? codes = freezed,
    Object? countryCode = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HotelsParamsModelCopyWith<$Res>
    implements $HotelsParamsModelCopyWith<$Res> {
  factory _$$_HotelsParamsModelCopyWith(_$_HotelsParamsModel value,
          $Res Function(_$_HotelsParamsModel) then) =
      __$$_HotelsParamsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int>? codes,
      String? countryCode,
      int? from,
      int? to,
      String? language});
}

/// @nodoc
class __$$_HotelsParamsModelCopyWithImpl<$Res>
    extends _$HotelsParamsModelCopyWithImpl<$Res>
    implements _$$_HotelsParamsModelCopyWith<$Res> {
  __$$_HotelsParamsModelCopyWithImpl(
      _$_HotelsParamsModel _value, $Res Function(_$_HotelsParamsModel) _then)
      : super(_value, (v) => _then(v as _$_HotelsParamsModel));

  @override
  _$_HotelsParamsModel get _value => super._value as _$_HotelsParamsModel;

  @override
  $Res call({
    Object? codes = freezed,
    Object? countryCode = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? language = freezed,
  }) {
    return _then(_$_HotelsParamsModel(
      codes: codes == freezed
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelsParamsModel implements _HotelsParamsModel {
  const _$_HotelsParamsModel(
      {final List<int>? codes,
      this.countryCode,
      this.from,
      this.to,
      this.language})
      : _codes = codes;

  factory _$_HotelsParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelsParamsModelFromJson(json);

  final List<int>? _codes;
  @override
  List<int>? get codes {
    final value = _codes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? countryCode;
  @override
  final int? from;
  @override
  final int? to;
  @override
  final String? language;

  @override
  String toString() {
    return 'HotelsParamsModel(codes: $codes, countryCode: $countryCode, from: $from, to: $to, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelsParamsModel &&
            const DeepCollectionEquality().equals(other._codes, _codes) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_codes),
      const DeepCollectionEquality().hash(countryCode),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$$_HotelsParamsModelCopyWith<_$_HotelsParamsModel> get copyWith =>
      __$$_HotelsParamsModelCopyWithImpl<_$_HotelsParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelsParamsModelToJson(
      this,
    );
  }
}

abstract class _HotelsParamsModel implements HotelsParamsModel {
  const factory _HotelsParamsModel(
      {final List<int>? codes,
      final String? countryCode,
      final int? from,
      final int? to,
      final String? language}) = _$_HotelsParamsModel;

  factory _HotelsParamsModel.fromJson(Map<String, dynamic> json) =
      _$_HotelsParamsModel.fromJson;

  @override
  List<int>? get codes;
  @override
  String? get countryCode;
  @override
  int? get from;
  @override
  int? get to;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$_HotelsParamsModelCopyWith<_$_HotelsParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
