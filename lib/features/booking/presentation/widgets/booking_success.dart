import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/bookings_list.dart';
import 'package:booking/features/booking/presentation/widgets/tab_bar_head.dart';
import 'package:flutter/material.dart';

class BookingSuccessWidget extends StatelessWidget {
  const BookingSuccessWidget({
    super.key,
    required this.cubit,
  });

  final BookingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: DefaultTabController(
              length: cubit.bookings.length,
              initialIndex: 0,
              child: Column(children: [
                SizedBox(height: AppHeight.h10),
                TabBarHead(cubit: cubit),
                BookingsList(cubit: cubit)
              ])),
        ),
      ],
    );
  }
}
