import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/data/models/pop_up_info/pop_up_info.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';
import 'package:flutter/material.dart';

class BookingPopupMenu extends StatelessWidget {
  final BookingCubit cubit;
  final String bookingId;
  // final int index;
  const BookingPopupMenu({
    Key? key,
    required this.cubit,
    required this.bookingId,
    // required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BookingCubit cubit = BookingCubit.get(context);

    List<PopUpInfo> items = cubit.bookings[cubit.tabBarIndex].popUpList!;
    // print(cubit.tabBarIndex);
    return PopupMenuButton(
        icon: const Icon(Icons.more_horiz_outlined, color: AppColors.teal),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).hintColor,
            )),
        color: Theme.of(context).hintColor,
        elevation: 2,
        enabled: true,
        onSelected: (PopUpInfo value) {
          cubit.updateMyBooking(
              params: UpdateMyBookingParams(
            bookingId: bookingId,
            bookingType: value.text!,
          ));
          debugPrint(value.text!.toLowerCase());
        },
        itemBuilder: (context) {
          return items.map((PopUpInfo choice) {
            return PopupMenuItem(
              value: choice,
              child: Row(
                children: [
                  Expanded(child: SmallHeadText(text: choice.text!)),
                  Icon(
                    choice.icon,
                    color: choice.color,
                  )
                ],
              ),
            );
          }).toList();
        });
  }
}
