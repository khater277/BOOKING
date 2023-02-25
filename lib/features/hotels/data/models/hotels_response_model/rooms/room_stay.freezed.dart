// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_stay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomStay _$RoomStayFromJson(Map<String, dynamic> json) {
  return _RoomStay.fromJson(json);
}

/// @nodoc
mixin _$RoomStay {
  @HiveField(0)
  String? get stayType => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get order => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomStayCopyWith<RoomStay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStayCopyWith<$Res> {
  factory $RoomStayCopyWith(RoomStay value, $Res Function(RoomStay) then) =
      _$RoomStayCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class _$RoomStayCopyWithImpl<$Res> implements $RoomStayCopyWith<$Res> {
  _$RoomStayCopyWithImpl(this._value, this._then);

  final RoomStay _value;
  // ignore: unused_field
  final $Res Function(RoomStay) _then;

  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_value.copyWith(
      stayType: stayType == freezed
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: roomStayFacilities == freezed
          ? _value.roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomStayCopyWith<$Res> implements $RoomStayCopyWith<$Res> {
  factory _$$_RoomStayCopyWith(
          _$_RoomStay value, $Res Function(_$_RoomStay) then) =
      __$$_RoomStayCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class __$$_RoomStayCopyWithImpl<$Res> extends _$RoomStayCopyWithImpl<$Res>
    implements _$$_RoomStayCopyWith<$Res> {
  __$$_RoomStayCopyWithImpl(
      _$_RoomStay _value, $Res Function(_$_RoomStay) _then)
      : super(_value, (v) => _then(v as _$_RoomStay));

  @override
  _$_RoomStay get _value => super._value as _$_RoomStay;

  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_$_RoomStay(
      stayType: stayType == freezed
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: roomStayFacilities == freezed
          ? _value._roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomStay implements _RoomStay {
  _$_RoomStay(
      {@HiveField(0) this.stayType,
      @HiveField(1) this.order,
      @HiveField(2) this.description,
      @HiveField(3) final List<RoomStayFacility>? roomStayFacilities})
      : _roomStayFacilities = roomStayFacilities;

  factory _$_RoomStay.fromJson(Map<String, dynamic> json) =>
      _$$_RoomStayFromJson(json);

  @override
  @HiveField(0)
  final String? stayType;
  @override
  @HiveField(1)
  final String? order;
  @override
  @HiveField(2)
  final String? description;
  final List<RoomStayFacility>? _roomStayFacilities;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities {
    final value = _roomStayFacilities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomStay(stayType: $stayType, order: $order, description: $description, roomStayFacilities: $roomStayFacilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomStay &&
            const DeepCollectionEquality().equals(other.stayType, stayType) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._roomStayFacilities, _roomStayFacilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stayType),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_roomStayFacilities));

  @JsonKey(ignore: true)
  @override
  _$$_RoomStayCopyWith<_$_RoomStay> get copyWith =>
      __$$_RoomStayCopyWithImpl<_$_RoomStay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomStayToJson(
      this,
    );
  }
}

abstract class _RoomStay implements RoomStay {
  factory _RoomStay(
          {@HiveField(0) final String? stayType,
          @HiveField(1) final String? order,
          @HiveField(2) final String? description,
          @HiveField(3) final List<RoomStayFacility>? roomStayFacilities}) =
      _$_RoomStay;

  factory _RoomStay.fromJson(Map<String, dynamic> json) = _$_RoomStay.fromJson;

  @override
  @HiveField(0)
  String? get stayType;
  @override
  @HiveField(1)
  String? get order;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities;
  @override
  @JsonKey(ignore: true)
  _$$_RoomStayCopyWith<_$_RoomStay> get copyWith =>
      throw _privateConstructorUsedError;
}
