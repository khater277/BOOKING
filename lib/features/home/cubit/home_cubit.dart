import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/booking/presentation/screens/booking_screen.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/presentation/screens/hotels_screen.dart';
import 'package:booking/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  List<Widget> pages = [
    const HotelsScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;
  void changeNavBar({required int index, required BuildContext context}) {
    emit(const HomeState.changeNavBarStateLoading());
    currentIndex = index;
    if (index == 0) {
      HotelsCubit.get(context).resetHotelsCubitValues();
    }
    // print("=============>${HiveHelper.getAllHotels()}");
    emit(const HomeState.changeNavBarState());
  }
}
