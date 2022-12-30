import 'package:booking/features/booking/presentation/screens/booking_screen.dart';
import 'package:booking/features/home/cubit/home_states.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/presentation/screens/hotels_screen.dart';
import 'package:booking/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  List<Widget> pages = [
    const HotelsScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;
  void changeNavBar({required int index, required BuildContext context}) {
    currentIndex = index;
    HotelsCubit.get(context).zeroOpacity();
    emit(ChangeNavBarState());
  }
}
