import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/constants.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_text_field_and_title.dart';
import 'package:flutter/material.dart';

class BookingCheckInAndOut extends StatelessWidget {
  final BookingCubit cubit;
  const BookingCheckInAndOut({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingTextFieldAndTitle(
          cubit: cubit,
          controller: cubit.checkInController!,
          title: 'Check In',
          hint: 'check in',
          check: Check.IN,
          icon: Icons.input_outlined,
        ),
        SizedBox(height: AppHeight.h10),
        BookingTextFieldAndTitle(
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
