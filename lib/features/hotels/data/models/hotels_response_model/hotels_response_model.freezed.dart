// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotels_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelsResponseModel _$HotelsResponseModelFromJson(Map<String, dynamic> json) {
  return _HotelsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsResponseModel {
  @HiveField(0)
  int? get from => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get to => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get total => throw _privateConstructorUsedError;
  List<Hotel>? get hotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsResponseModelCopyWith<HotelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsResponseModelCopyWith<$Res> {
  factory $HotelsResponseModelCopyWith(
          HotelsResponseModel value, $Res Function(HotelsResponseModel) then) =
      _$HotelsResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      List<Hotel>? hotels});
}

/// @nodoc
class _$HotelsResponseModelCopyWithImpl<$Res>
    implements $HotelsResponseModelCopyWith<$Res> {
  _$HotelsResponseModelCopyWithImpl(this._value, this._then);

  final HotelsResponseModel _value;
  // ignore: unused_field
  final $Res Function(HotelsResponseModel) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: hotels == freezed
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HotelsResponseModelCopyWith<$Res>
    implements $HotelsResponseModelCopyWith<$Res> {
  factory _$$_HotelsResponseModelCopyWith(_$_HotelsResponseModel value,
          $Res Function(_$_HotelsResponseModel) then) =
      __$$_HotelsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      List<Hotel>? hotels});
}

/// @nodoc
class __$$_HotelsResponseModelCopyWithImpl<$Res>
    extends _$HotelsResponseModelCopyWithImpl<$Res>
    implements _$$_HotelsResponseModelCopyWith<$Res> {
  __$$_HotelsResponseModelCopyWithImpl(_$_HotelsResponseModel _value,
      $Res Function(_$_HotelsResponseModel) _then)
      : super(_value, (v) => _then(v as _$_HotelsResponseModel));

  @override
  _$_HotelsResponseModel get _value => super._value as _$_HotelsResponseModel;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
  }) {
    return _then(_$_HotelsResponseModel(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: hotels == freezed
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelsResponseModel implements _HotelsResponseModel {
  _$_HotelsResponseModel(
      {@HiveField(0) this.from,
      @HiveField(1) this.to,
      @HiveField(2) this.total,
      final List<Hotel>? hotels})
      : _hotels = hotels;

  factory _$_HotelsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelsResponseModelFromJson(json);

  @override
  @HiveField(0)
  final int? from;
  @override
  @HiveField(1)
  final int? to;
  @override
  @HiveField(2)
  final int? total;
  final List<Hotel>? _hotels;
  @override
  List<Hotel>? get hotels {
    final value = _hotels;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HotelsResponseModel(from: $from, to: $to, total: $total, hotels: $hotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelsResponseModel &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  _$$_HotelsResponseModelCopyWith<_$_HotelsResponseModel> get copyWith =>
      __$$_HotelsResponseModelCopyWithImpl<_$_HotelsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelsResponseModelToJson(
      this,
    );
  }
}

abstract class _HotelsResponseModel implements HotelsResponseModel {
  factory _HotelsResponseModel(
      {@HiveField(0) final int? from,
      @HiveField(1) final int? to,
      @HiveField(2) final int? total,
      final List<Hotel>? hotels}) = _$_HotelsResponseModel;

  factory _HotelsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_HotelsResponseModel.fromJson;

  @override
  @HiveField(0)
  int? get from;
  @override
  @HiveField(1)
  int? get to;
  @override
  @HiveField(2)
  int? get total;
  @override
  List<Hotel>? get hotels;
  @override
  @JsonKey(ignore: true)
  _$$_HotelsResponseModelCopyWith<_$_HotelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
