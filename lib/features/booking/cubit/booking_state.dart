part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.initTabController() = _InitTabController;
  const factory BookingState.changeTabBar() = _ChangeTabBar;
}
