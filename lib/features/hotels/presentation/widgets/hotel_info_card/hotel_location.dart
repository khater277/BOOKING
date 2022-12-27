import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class HotelLocation extends StatelessWidget {
  const HotelLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: AppSize.s18,
          color: AppColors.teal,
        ),
        SizedBox(width: AppWidth.w2),
        const Flexible(
          child: SecondaryText(
            text: "2.0 km to city",
            isLight: true,
            isButton: true,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
