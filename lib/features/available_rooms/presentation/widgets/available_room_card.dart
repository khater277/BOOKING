import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/rate.dart';
import 'package:flutter/material.dart';

class AvailableRoomCard extends StatelessWidget {
  final CheckAvailabilityBody checkAvailabilityBody;
  final AvailableRate availableRate;

  const AvailableRoomCard({
    super.key,
    required this.checkAvailabilityBody,
    required this.availableRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          width: double.infinity,
          // height: AppHeight.h140,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppHeight.h15, horizontal: AppWidth.w20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: AvailableRoomIconAndData(
                        icon: Icons.bedroom_parent_outlined,
                        data: "1",
                      ),
                    ),
                    Expanded(
                      child: AvailableRoomIconAndData(
                        icon: Icons.input_outlined,
                        data: checkAvailabilityBody.stay!.checkIn!,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppHeight.h10),
                Row(
                  children: [
                    Expanded(
                      child: AvailableRoomIconAndData(
                          icon: Icons.people_outline,
                          data: checkAvailabilityBody.occupancies![0].adults!
                              .toString()),
                    ),
                    Expanded(
                      child: AvailableRoomIconAndData(
                        icon: Icons.output_outlined,
                        data: checkAvailabilityBody.stay!.checkOut!,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppHeight.h10),
                Row(
                  children: [
                    Expanded(
                      child: AvailableRoomIconAndData(
                          icon: Icons.child_care,
                          data: checkAvailabilityBody.occupancies![0].children!
                              .toString()),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            ' \$',
                            style: getBoldStyle(
                              fontColor: AppColors.teal,
                              fontSize: FontSize.s15,
                            ),
                          ),
                          SizedBox(width: AppWidth.w15),
                          SecondaryText(
                            text: availableRate.net ?? "unknown",
                            isLight: true,
                            isButton: true,
                            size: FontSize.s15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppHeight.h10),
                SecondaryText(
                  text: "Board Name : ${availableRate.boardName}",
                  maxLines: 3,
                  size: FontSize.s14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AvailableRoomIconAndData extends StatelessWidget {
  final IconData icon;
  final String data;
  const AvailableRoomIconAndData({
    super.key,
    required this.icon,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RotatedBox(
          quarterTurns: icon == Icons.output_outlined ? 2 : 0,
          child: Icon(
            icon,
            color: AppColors.teal,
            size: AppSize.s20,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        SecondaryText(
          text: data,
          isLight: true,
          isButton: true,
          size: FontSize.s14,
        )
      ],
    );
  }
}
