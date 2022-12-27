import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_details.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_image.dart';
import 'package:flutter/material.dart';

class HotelInfoCard extends StatelessWidget {
  const HotelInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.s20),
        child: Container(
          color: Theme.of(context).cardColor,
          width: double.infinity,
          height: AppHeight.h140,
          child: Row(
            children: const [
              HotelImage(),
              HotelDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
