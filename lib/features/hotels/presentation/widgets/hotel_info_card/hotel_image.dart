import 'package:booking/core/shared_widgets/network_image.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class HotelImage extends StatelessWidget {
  final String image;
  const HotelImage({super.key, required this.image});

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
        child: CustomNetworkImage(imageUrl: AppStrings.imagesUrl + image),
      ),
    );
  }
}
