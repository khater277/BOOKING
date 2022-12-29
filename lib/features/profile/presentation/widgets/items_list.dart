import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
import 'package:booking/features/profile/presentation/widgets/item.dart';
import 'package:flutter/material.dart';

class ProfileItemsList extends StatelessWidget {
  final ProfileCubit cubit;
  const ProfileItemsList({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: cubit.profileItemsData.length,
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.symmetric(vertical: AppHeight.h10),
          child: const Divider(),
        ),
        itemBuilder: (BuildContext context, int index) =>
            ProfileItem(item: cubit.profileItemsData[index]),
      ),
    );
  }
}
