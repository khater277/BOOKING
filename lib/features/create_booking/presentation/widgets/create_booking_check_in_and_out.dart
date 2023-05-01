import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/constants.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:booking/features/create_booking/presentation/widgets/create_booking_text_field_and_title.dart';

import 'package:flutter/material.dart';

class CreateBookingCheckInAndOut extends StatelessWidget {
  final CreateBookingCubit cubit;
  const CreateBookingCheckInAndOut({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateBookingTextFieldAndTitle(
          cubit: cubit,
          controller: cubit.checkInController!,
          title: 'Check In',
          hint: 'check in',
          check: Check.IN,
          icon: Icons.input_outlined,
        ),
        SizedBox(height: AppHeight.h10),
        CreateBookingTextFieldAndTitle(
          cubit: cubit,
          controller: cubit.checkOutController!,
          title: 'Check Out',
          hint: 'check out',
          check: Check.OUT,
          icon: Icons.output_outlined,
        )
      ],
    );
  }
}
