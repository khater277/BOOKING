import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/drop_down_text_field_with_title.dart';
import 'package:flutter/material.dart';

class BookingAdultsAndChildren extends StatelessWidget {
  final BookingCubit cubit;
  const BookingAdultsAndChildren({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: DropDownTextFieldWithTitle(
            title: "Adults",
            controller: cubit.adultsController!,
            list: cubit.dropDownList,
            icon: Icons.people_outline,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        Flexible(
          child: DropDownTextFieldWithTitle(
            title: "Children",
            controller: cubit.childrenController!,
            list: cubit.dropDownList,
            icon: Icons.child_care,
          ),
        ),
      ],
    );
  }
}
