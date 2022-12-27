import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class HotelNightPrice extends StatelessWidget {
  const HotelNightPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LargeHeadText(text: "\$180", size: FontSize.s18),
        SecondaryText(
          text: "/per night",
          size: FontSize.s15,
          isLight: true,
          isButton: true,
          maxLines: 1,
        ),
      ],
    );
  }
}
