// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingsListModel {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<BookingDetailsModel>? get list => throw _privateConstructorUsedError;
  @HiveField(2)
  List<PopUpInfo>? get popUpList => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String>? get loadingBookings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingsListModelCopyWith<BookingsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingsListModelCopyWith<$Res> {
  factory $BookingsListModelCopyWith(
          BookingsListModel value, $Res Function(BookingsListModel) then) =
      _$BookingsListModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) List<BookingDetailsModel>? list,
      @HiveField(2) List<PopUpInfo>? popUpList,
      @HiveField(3) List<String>? loadingBookings});
}

/// @nodoc
class _$BookingsListModelCopyWithImpl<$Res>
    implements $BookingsListModelCopyWith<$Res> {
  _$BookingsListModelCopyWithImpl(this._value, this._then);

  final BookingsListModel _value;
  // ignore: unused_field
  final $Res Function(BookingsListModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
    Object? popUpList = freezed,
    Object? loadingBookings = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookingDetailsModel>?,
      popUpList: popUpList == freezed
          ? _value.popUpList
          : popUpList // ignore: cast_nullable_to_non_nullable
              as List<PopUpInfo>?,
      loadingBookings: loadingBookings == freezed
          ? _value.loadingBookings
          : loadingBookings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookingsListModelCopyWith<$Res>
    implements $BookingsListModelCopyWith<$Res> {
  factory _$$_BookingsListModelCopyWith(_$_BookingsListModel value,
          $Res Function(_$_BookingsListModel) then) =
      __$$_BookingsListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) List<BookingDetailsModel>? list,
      @HiveField(2) List<PopUpInfo>? popUpList,
      @HiveField(3) List<String>? loadingBookings});
}

/// @nodoc
class __$$_BookingsListModelCopyWithImpl<$Res>
    extends _$BookingsListModelCopyWithImpl<$Res>
    implements _$$_BookingsListModelCopyWith<$Res> {
  __$$_BookingsListModelCopyWithImpl(
      _$_BookingsListModel _value, $Res Function(_$_BookingsListModel) _then)
      : super(_value, (v) => _then(v as _$_BookingsListModel));

  @override
  _$_BookingsListModel get _value => super._value as _$_BookingsListModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
    Object? popUpList = freezed,
    Object? loadingBookings = freezed,
  }) {
    return _then(_$_BookingsListModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookingDetailsModel>?,
      popUpList: popUpList == freezed
          ? _value._popUpList
          : popUpList // ignore: cast_nullable_to_non_nullable
              as List<PopUpInfo>?,
      loadingBookings: loadingBookings == freezed
          ? _value._loadingBookings
          : loadingBookings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_BookingsListModel implements _BookingsListModel {
  _$_BookingsListModel(
      {@HiveField(0) this.name,
      @HiveField(1) final List<BookingDetailsModel>? list,
      @HiveField(2) final List<PopUpInfo>? popUpList,
      @HiveField(3) final List<String>? loadingBookings})
      : _list = list,
        _popUpList = popUpList,
        _loadingBookings = loadingBookings;

  @override
  @HiveField(0)
  final String? name;
  final List<BookingDetailsModel>? _list;
  @override
  @HiveField(1)
  List<BookingDetailsModel>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PopUpInfo>? _popUpList;
  @override
  @HiveField(2)
  List<PopUpInfo>? get popUpList {
    final value = _popUpList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _loadingBookings;
  @override
  @HiveField(3)
  List<String>? get loadingBookings {
    final value = _loadingBookings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingsListModel(name: $name, list: $list, popUpList: $popUpList, loadingBookings: $loadingBookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingsListModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._popUpList, _popUpList) &&
            const DeepCollectionEquality()
                .equals(other._loadingBookings, _loadingBookings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_popUpList),
      const DeepCollectionEquality().hash(_loadingBookings));

  @JsonKey(ignore: true)
  @override
  _$$_BookingsListModelCopyWith<_$_BookingsListModel> get copyWith =>
      __$$_BookingsListModelCopyWithImpl<_$_BookingsListModel>(
          this, _$identity);
}

abstract class _BookingsListModel implements BookingsListModel {
  factory _BookingsListModel(
          {@HiveField(0) final String? name,
          @HiveField(1) final List<BookingDetailsModel>? list,
          @HiveField(2) final List<PopUpInfo>? popUpList,
          @HiveField(3) final List<String>? loadingBookings}) =
      _$_BookingsListModel;

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  List<BookingDetailsModel>? get list;
  @override
  @HiveField(2)
  List<PopUpInfo>? get popUpList;
  @override
  @HiveField(3)
  List<String>? get loadingBookings;
  @override
  @JsonKey(ignore: true)
  _$$_BookingsListModelCopyWith<_$_BookingsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
