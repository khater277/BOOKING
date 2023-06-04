import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/info_card/booking_card_info.dart';
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
              if (element.list!.isNotEmpty) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: element.list!.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: AppHeight.h30),
                  itemBuilder: (BuildContext context, int index) {
                    return BookingCardInfo(
                      bookingDetailsModel: element.list![index],
                    );
                  },
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark_outline,
                        size: AppSize.s100,
                        color: Theme.of(context).highlightColor,
                      ),
                      SizedBox(
                        height: AppHeight.h2,
                      ),
                      SecondaryText(
                        text: "There is no bookings yet.",
                        size: FontSize.s16,
                        maxLines: 2,
                        center: true,
                        isLight: true,
                      ),
                    ],
                  ),
                );
              }
            }).toList()),
      ),
    );
  }
}
