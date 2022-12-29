// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @HiveField(0)
  String? get imageTypeCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get path => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get order => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get visualOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
  }) {
    return _then(_value.copyWith(
      imageTypeCode: imageTypeCode == freezed
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: visualOrder == freezed
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, (v) => _then(v as _$_Image));

  @override
  _$_Image get _value => super._value as _$_Image;

  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
  }) {
    return _then(_$_Image(
      imageTypeCode: imageTypeCode == freezed
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: visualOrder == freezed
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  _$_Image(
      {@HiveField(0) this.imageTypeCode,
      @HiveField(1) this.path,
      @HiveField(2) this.order,
      @HiveField(3) this.visualOrder});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  @HiveField(0)
  final String? imageTypeCode;
  @override
  @HiveField(1)
  final String? path;
  @override
  @HiveField(2)
  final int? order;
  @override
  @HiveField(3)
  final int? visualOrder;

  @override
  String toString() {
    return 'Image(imageTypeCode: $imageTypeCode, path: $path, order: $order, visualOrder: $visualOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            const DeepCollectionEquality()
                .equals(other.imageTypeCode, imageTypeCode) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.visualOrder, visualOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageTypeCode),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(visualOrder));

  @JsonKey(ignore: true)
  @override
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  factory _Image(
      {@HiveField(0) final String? imageTypeCode,
      @HiveField(1) final String? path,
      @HiveField(2) final int? order,
      @HiveField(3) final int? visualOrder}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  @HiveField(0)
  String? get imageTypeCode;
  @override
  @HiveField(1)
  String? get path;
  @override
  @HiveField(2)
  int? get order;
  @override
  @HiveField(3)
  int? get visualOrder;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}
