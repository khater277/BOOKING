import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/body/room.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/body/holder.dart';
import 'package:booking/features/booking/data/models/create_booking/body/room.dart';
import 'package:booking/features/booking/domain/usecases/check_availability_use_case.dart';
import 'package:booking/features/booking/domain/usecases/check_rate_use_case.dart';
import 'package:booking/features/booking/domain/usecases/create_booking_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_cubit.freezed.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  final CheckAvailabilityUseCase checkAvailabilityUseCase;
  final CheckRateUseCase checkRateUseCase;
  final CreateBookingUseCase createBookingUseCase;
  BookingCubit({
    required this.checkAvailabilityUseCase,
    required this.checkRateUseCase,
    required this.createBookingUseCase,
  }) : super(const BookingState.initial());
  static BookingCubit get(BuildContext context) => BlocProvider.of(context);

  List<String> bookings = [
    "Completed",
    "Upcoming",
    "Cancelled",
  ];

  int tabBarIndex = 0;
  void changeTabBar(int index) {
    tabBarIndex = index;
    emit(const BookingState.changeTabBar());
  }

  TabController? tabController;
  void initTabController(TickerProvider tickerProvider) {
    tabController = TabController(length: 3, vsync: tickerProvider);
    tabController!.addListener(() {
      changeTabBar(tabController!.index);
    });
    emit(const BookingState.initTabController());
  }

  void createBooking({
    required CheckAvailabilityBody checkAvailabilityBody,
  }) async {
    final response = await checkAvailabilityUseCase.call(checkAvailabilityBody);
    response.fold(
      (failure) {
        debugPrint("ERROR IN ======> CHECK AVAILABILITY");
      },
      (checkAvailabilityResponse) async {
        debugPrint("=====>${checkAvailabilityResponse.availableHotels!.total}");
        if (checkAvailabilityResponse.availableHotels!.total != 0) {
          List<RateRoom> rateRooms = [
            RateRoom(
                rateKey: checkAvailabilityResponse
                    .availableHotels!
                    .availableHotels![0]
                    .availableRooms![0]
                    .availableRates![0]
                    .rateKey)
          ];

          CheckRateBody checkRateBody = CheckRateBody(rateRooms: rateRooms);
          final response = await checkRateUseCase.call(checkRateBody);
          response.fold(
            (failure) {
              debugPrint("ERROR IN ======> CHECK RATE");
            },
            (checkRateResponse) async {
              // checkRateResponse.rateHotel!.
              List<BookingRoom> list = [
                BookingRoom(
                  rateKey: checkRateResponse
                      .rateHotel!.rateRooms!.first.rates!.first.rateKey,
                )
              ];
              CreateBookingBody createBookingBody = CreateBookingBody(
                holder: Holder(name: "Ahmed", surname: "Khater"),
                bookingRooms: list,
                clientReference: "clientReference",
                remark: "remark",
                tolerance: 1,
              );
              final response =
                  await createBookingUseCase.call(createBookingBody);
              response.fold(
                (failure) {
                  debugPrint("ERROR IN ======> CREATE BOOKING");
                },
                (createBookingResponse) {
                  debugPrint(
                      "BOOKING CREATED ====> ${createBookingResponse.booking!.holder.toString()}");
                },
              );
            },
          );
        } else {
          debugPrint("CAN'T CREATE BOOKING");
        }
      },
    );
  }
}
