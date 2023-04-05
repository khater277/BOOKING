import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking/booking_card_info.dart';
import 'package:flutter/material.dart';

class BookingsList extends StatelessWidget {
  final BookingCubit cubit;
  const BookingsList({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h15),
        child: TabBarView(
            controller: cubit.tabController,
            physics: const BouncingScrollPhysics(),
            children: cubit.bookings.map((element) {
              return ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: AppHeight.h30),
                itemBuilder: (BuildContext context, int index) {
                  return const BookingCardInfo();
                },
              );
            }).toList()),
      ),
    );
  }
}
