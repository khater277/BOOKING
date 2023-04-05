part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.initTabController() = _InitTabController;
  const factory BookingState.changeTabBar() = _ChangeTabBar;
  const factory BookingState.selectDate() = _SelectDate;
  const factory BookingState.initCalenderControllers() =
      _InitCalenderControllers;
  const factory BookingState.disposeCalenderControllers() =
      _DisposeCalenderControllers;
  const factory BookingState.initBookingDetailsControllers() =
      _InitBookingDetailsControllers;
  const factory BookingState.disposeBookingDetailsControllers() =
      _DisposeBookingDetailsControllers;
}
