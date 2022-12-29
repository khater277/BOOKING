import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              LargeHeadText(
                text: "Khater",
                size: FontSize.s22,
              ),
              SecondaryText(
                text: "view and edit profile",
                size: FontSize.s16,
                isButton: true,
                isLight: true,
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: AppSize.s35,
          backgroundImage: const AssetImage(AppImages.hotel),
        )
      ],
    );
  }
}
