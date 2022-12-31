import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
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
              Flexible(
                child: LargeHeadText(
                  text: ProfileCubit.get(context).user.name!,
                  size: FontSize.s22,
                  maxLines: 3,
                ),
              ),
              Flexible(
                child: SecondaryText(
                  text: "view and edit profile",
                  size: FontSize.s16,
                  isButton: true,
                  isLight: true,
                  maxLines: 2,
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: AppSize.s35,
          backgroundColor: AppColors.teal.withOpacity(0.5),
          backgroundImage: ProfileCubit.get(context).user.image == ""
              ? const AssetImage(AppImages.hotel)
              : NetworkImage(ProfileCubit.get(context).user.image!)
                  as ImageProvider,
        )
      ],
    );
  }
}
