import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatefulWidget {
  final HotelsCubit cubit;
  const PageIndicator({super.key, required this.cubit});

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppHeight.h25,
          horizontal: AppWidth.w18,
        ),
        child: SmoothPageIndicator(
          controller: widget.cubit.pageController,
          effect: WormEffect(
            dotWidth: AppSize.s9,
            dotHeight: AppSize.s9,
            dotColor: AppColors.grey,
            activeDotColor: AppColors.teal,
          ),
          count: 3,
        ),
      ),
    );
  }
}
