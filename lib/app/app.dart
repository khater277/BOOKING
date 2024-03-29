import 'package:booking/app/injector.dart';
import 'package:booking/config/app_theme.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/presentation/screens/login_screen.dart';
import 'package:booking/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:booking/features/home/cubit/home_cubit.dart';
import 'package:booking/features/home/presentation/screens/home_screen.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => di<RegisterCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<LoginCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<HotelsCubit>()
                  ..getInit()
                  ..changeHotelsOpacityValue(context)
                  ..changeHotelDetailsOpacityValue(context),
              ),
              BlocProvider(
                create: (BuildContext context) => di<HomeCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) =>
                    di<BookingCubit>()..getMyBookings(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<CreateBookingCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<AvailableRoomsCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<ProfileCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<MapsCubit>()
                  // ..changeMapScrollPosition(context)
                  ..setMarkers(context: context),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme(),
              home: HiveHelper.getCurrentUser() == null
                  ? const LoginScreen()
                  : const HomeScreen(),
              // const MapScreen(),
              // const LoginScreen(),
              // const TestScreen()
            ),
          );
        });
  }
}
