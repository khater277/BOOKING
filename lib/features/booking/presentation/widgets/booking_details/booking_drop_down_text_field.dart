import 'package:booking/core/shared_widgets/drop_down_text_fiels.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class BookingDropDownTextField extends StatelessWidget {
  final SingleValueDropDownController controller;
  final List<DropDownValueModel> list;
  final String hintText;
  final IconData icon;
  const BookingDropDownTextField({
    super.key,
    required this.icon,
    required this.controller,
    required this.list,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDropDownTextField(
      controller: controller,
      list: list,
      hintText: hintText,
      inputType: TextInputType.text,
      rounded: 8,
      border: AppColors.lightGrey,
      textSize: FontSize.s14,
      onChanged: (value) {
        //   DropDownValueModel downValueModel = value;
        //   AppCubit.get(context)
        //       .changeReminderDuration(value: downValueModel.value);
        //
      },
      prefixIcon: icon,
    );
  }
}
