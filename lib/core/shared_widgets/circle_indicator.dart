import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s30,
      height: AppSize.s30,
      child: CircularProgressIndicator(
        color: AppColors.teal,
        strokeWidth: AppSize.s2,
      ),
    );
  }
}
