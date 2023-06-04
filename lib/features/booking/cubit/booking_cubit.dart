import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/data/models/booking_list_model/booking_list_model.dart';
import 'package:booking/features/booking/data/models/pop_up_info/pop_up_info.dart';
import 'package:booking/features/booking/domain/usecases/get_my_bookings_use_case.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_cubit.freezed.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  final GetMyBookingsUseCase getMyBookingsUseCase;
  final UpdateMyBookingUseCase updateMyBookingUseCase;
  BookingCubit({
    required this.getMyBookingsUseCase,
    required this.updateMyBookingUseCase,
  }) : super(const BookingState.initial());
  static BookingCubit get(BuildContext context) => BlocProvider.of(context);

  List<BookingsListModel> bookings = [
    BookingsListModel(
      name: "Completed",
      list: [],
      loadingBookings: [],
      popUpList: [
        PopUpInfo(
          text: "Upcoming",
          icon: Icons.upcoming,
          color: Colors.amber,
        ),
        PopUpInfo(
          text: "Cancelled",
          icon: Icons.cancel_outlined,
          color: Colors.red,
        ),
      ],
    ),
    BookingsListModel(
      name: "Upcoming",
      list: [],
      loadingBookings: [],
      popUpList: [
        PopUpInfo(
          text: "Completed",
          icon: Icons.done_all_outlined,
          color: Colors.green,
        ),
        PopUpInfo(
          text: "Cancelled",
          icon: Icons.cancel_outlined,
          color: Colors.red,
        ),
      ],
    ),
    BookingsListModel(
      name: "Cancelled",
      list: [],
      loadingBookings: [],
      popUpList: [
        PopUpInfo(
          text: "Completed",
          icon: Icons.done_all_outlined,
          color: Colors.green,
        ),
        PopUpInfo(
          text: "Upcoming",
          icon: Icons.upcoming,
          color: Colors.amber,
        ),
      ],
    ),
  ];

  int tabBarIndex = 0;
  void changeTabBar(int index) {
    emit(const BookingState.changeTabBarLoading());
    tabBarIndex = index;
    // print("swipe========${tabBarIndex}");
    emit(const BookingState.changeTabBar());
  }

  TabController? tabController;
  void initTabController(TickerProvider tickerProvider) {
    tabController = TabController(length: 3, vsync: tickerProvider);
    tabController!.addListener(() {
      changeTabBar(tabController!.index);
    });
    // emit(const BookingState.initTabController());
  }

  List<Hotel> hotels = HiveHelper.getAllHotels() != null
      ? HiveHelper.getAllHotels()!.hotels!
      : [];
  void getMyBookings() async {
    emit(const BookingState.getMyBookingLoading());
    final response = await getMyBookingsUseCase.call(NoParams());
    response.fold(
      (failure) {
        if (HiveHelper.getMyBookings() == null) {
          emit(BookingState.getMyBookingError(failure.getMessage()));
        } else {
          handleMyBookings(data: HiveHelper.getMyBookings()!);
          emit(const BookingState.getMyBookingSuccess());
        }
      },
      (data) {
        print("=============>in success");
        handleMyBookings(data: data);
        emit(const BookingState.getMyBookingSuccess());
      },
    );
  }

  void handleMyBookings({required List<BookingDetailsModel> data}) {
    bookings[0] = bookings[0].copyWith(
        list: data.where((element) => element.type == "Completed").toList());
    bookings[1] = bookings[1].copyWith(
        list: data.where((element) => element.type == "Upcoming").toList());

    bookings[2] = bookings[2].copyWith(
        list: data.where((element) => element.type == "Cancelled").toList());
  }

  void updateMyBooking({required UpdateMyBookingParams params}) async {
    emit(const BookingState.updateMyBookingLoading());
    bookings[tabBarIndex].loadingBookings!.add(params.bookingId);
    final response = await updateMyBookingUseCase.call(params);
    response.fold(
      (failure) {
        bookings[tabBarIndex].loadingBookings!.remove(params.bookingId);
        emit(BookingState.updateMyBookingError(failure.getMessage()));
      },
      (result) async {
        final getBookingResponse = await getMyBookingsUseCase.call(NoParams());
        getBookingResponse.fold(
          (failure) {
            bookings[tabBarIndex].loadingBookings!.remove(params.bookingId);
            handleMyBookings(data: HiveHelper.getMyBookings()!);
            emit(const BookingState.updateMyBookingSuccess());
          },
          (data) {
            bookings[tabBarIndex].loadingBookings!.remove(params.bookingId);
            handleMyBookings(data: data);
            emit(const BookingState.updateMyBookingSuccess());
          },
        );
      },
    );
  }
}
