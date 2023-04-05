import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BookingTextFieldTitle extends StatelessWidget {
  final String title;
  const BookingTextFieldTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return LargeHeadText(
      text: title,
      color: AppColors.teal,
      size: FontSize.s14,
    );
  }
}
