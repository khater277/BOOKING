import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/text_form_field.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/constants.dart';
import 'package:booking/features/create_booking/presentation/screens/select_date_screen.dart';
import 'package:booking/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:booking/features/create_booking/presentation/widgets/create_text_field_title.dart';
import 'package:flutter/material.dart';

class CreateBookingTextFieldAndTitle extends StatelessWidget {
  final CreateBookingCubit cubit;
  final TextEditingController controller;
  final String title;
  final String hint;
  final Check? check;
  final IconData icon;
  const CreateBookingTextFieldAndTitle({
    super.key,
    required this.cubit,
    required this.controller,
    required this.title,
    required this.hint,
    this.check,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CreateBookingTextFieldTitle(title: title),
        SizedBox(height: AppHeight.h5),
        CustomTextField(
          hintText: hint,
          validatorText: "validatorText",
          validator: (value) => value!.isEmpty ? 'Email cannot be empty' : null,
          controller: controller,
          inputType: TextInputType.text,
          prefixIcon: icon,
          readOnly: check != null ? true : false,
          onTap: () {
            if (check != null) {
              Go.to(
                  context: context,
                  screen: SelectDateScreen(cubit: cubit, check: check!));
              debugPrint("A7A");
            }
          },
        ),
      ],
    );
  }
}
