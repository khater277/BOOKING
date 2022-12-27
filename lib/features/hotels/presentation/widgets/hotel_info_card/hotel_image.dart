import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class HotelImage extends StatelessWidget {
  const HotelImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppWidth.w115,
      height: AppHeight.h140,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s20),
          bottomLeft: Radius.circular(AppSize.s20),
        ),
        child: Image.asset(
          AppImages.hotel,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
