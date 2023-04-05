import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_text_field_and_title.dart';
import 'package:flutter/material.dart';

class BookingName extends StatelessWidget {
  final BookingCubit cubit;
  const BookingName({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BookingTextFieldAndTitle(
            cubit: cubit,
            controller: cubit.firstNameController!,
            title: 'First Name',
            hint: "first name",
            // check: Check.IN,
            icon: Icons.person_outline,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        Flexible(
          child: BookingTextFieldAndTitle(
            cubit: cubit,
            controller: cubit.lastNameController!,
            title: 'Last Name',
            hint: "last name",
            // check: Check.IN,
            icon: Icons.person_outline,
          ),
        ),
      ],
    );
  }
}
