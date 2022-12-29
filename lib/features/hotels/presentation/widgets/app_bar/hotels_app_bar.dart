import 'package:booking/core/shared_widgets/text_form_field.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/presentation/widgets/app_bar/app_bar_page_view.dart';
import 'package:flutter/material.dart';

class HotelsAppBar extends StatelessWidget {
  final HotelsCubit cubit;

  const HotelsAppBar({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: AppHeight.h320,
      collapsedHeight: AppHeight.h150,
      title: CustomTextField(
        hintText: "where are you going?",
        validatorText: "Error!",
        controller: TextEditingController(),
        inputType: TextInputType.emailAddress,
        prefixIcon: Icons.search_outlined,
      ),
      flexibleSpace: AppBarPageView(
        cubit: cubit,
      ),
    );
  }
}
