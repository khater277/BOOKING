import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_location.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_name_and_address.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_night_price.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: AppHeight.h10,
          bottom: AppHeight.h6,
          left: AppWidth.w8,
          right: AppWidth.w10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HotelNameAndAddress(),
            SizedBox(height: AppHeight.h5),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HotelLocation(),
                      HotelRating(),
                    ],
                  ),
                ),
                SizedBox(width: AppWidth.w3),
                const HotelNightPrice(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
