import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:booking/features/profile/data/models/pofile_item_model.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final ProfileItemModel item;
  const ProfileItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            item.name,
            style: getRegularStyle(
              fontColor: Theme.of(context).focusColor,
              fontSize: FontSize.s15,
            ),
          ),
        ),
        Icon(
          item.icon,
          color: Theme.of(context).canvasColor,
          size: AppSize.s24,
        )
      ],
    );
  }
}
