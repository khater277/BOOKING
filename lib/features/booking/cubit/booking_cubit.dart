import 'package:booking/features/booking/domain/usecases/check_rate_use_case.dart';
import 'package:booking/features/create_booking/domain/usecases/check_availability_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_cubit.freezed.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  final CheckAvailabilityUseCase checkAvailabilityUseCase;
  final CheckRateUseCase checkRateUseCase;

  BookingCubit({
    required this.checkAvailabilityUseCase,
    required this.checkRateUseCase,
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
}
