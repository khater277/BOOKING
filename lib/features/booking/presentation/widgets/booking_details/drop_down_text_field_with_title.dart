import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_drop_down_text_field.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/text_field_title.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class DropDownTextFieldWithTitle extends StatelessWidget {
  final String title;
  final SingleValueDropDownController controller;
  final List<DropDownValueModel> list;
  final IconData icon;
  const DropDownTextFieldWithTitle({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookingTextFieldTitle(title: title),
        SizedBox(height: AppHeight.h5),
        BookingDropDownTextField(
          icon: icon,
          controller: controller,
          hintText: title.toLowerCase(),
          list: list,
        ),
      ],
    );
  }
}
