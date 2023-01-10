import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class HotelNightPrice extends StatelessWidget {
  final bool isHotelDetails;
  final bool isBooking;

  const HotelNightPrice(
      {super.key, this.isHotelDetails = false, this.isBooking = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LargeHeadText(
          text: "\$180",
          size: isBooking ? FontSize.s20 : FontSize.s18,
          color: isHotelDetails
              ? AppColors.white
              : Theme.of(context).textTheme.bodyLarge!.color,
        ),
        SecondaryText(
          text: "/per night",
          size: isBooking ? FontSize.s16 : FontSize.s15,
          color: isHotelDetails == true ? AppColors.white : null,
          isLight: true,
          isButton: true,
          maxLines: 1,
        ),
      ],
    );
  }
}
