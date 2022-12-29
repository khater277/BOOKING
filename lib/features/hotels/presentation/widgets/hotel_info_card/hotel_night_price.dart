import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class HotelNightPrice extends StatelessWidget {
  final bool isBooking;
  const HotelNightPrice({super.key, this.isBooking = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LargeHeadText(
            text: "\$180", size: isBooking ? FontSize.s20 : FontSize.s18),
        SecondaryText(
          text: "/per night",
          size: isBooking ? FontSize.s16 : FontSize.s15,
          isLight: true,
          isButton: true,
          maxLines: 1,
        ),
      ],
    );
  }
}
