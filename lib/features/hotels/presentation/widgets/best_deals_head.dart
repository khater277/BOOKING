import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';

class BestDealsHead extends StatelessWidget {
  final HotelsCubit cubit;
  const BestDealsHead({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppWidth.w25,
        right: AppWidth.w5,
      ),
      child: Row(
        children: [
          Expanded(
            child: LargeHeadText(
              text: "Best Deals",
              size: FontSize.s18,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: AppSize.s16,
                color: AppColors.teal,
              ))
        ],
      ),
    );
  }
}
