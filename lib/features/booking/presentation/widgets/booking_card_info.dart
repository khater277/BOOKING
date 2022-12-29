import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_night_price.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';

class BookingCardInfo extends StatelessWidget {
  const BookingCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w12),
      child: Column(
        children: [
          Text(
            "01 Dec - 05 Dec, 1 Room 2 People",
            style: getMediumStyle(
              fontColor: Theme.of(context).focusColor,
              // fontSize: FontSize.s12,
            ),
          ),
          SizedBox(height: AppHeight.h15),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s25),
            child: Container(
              width: double.infinity,
              height: AppHeight.h230,
              color: Theme.of(context).cardColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: AppHeight.h150,
                    child: Image.asset(
                      AppImages.hotel,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppWidth.w12,
                        vertical: AppHeight.h8,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                    child: LargeHeadText(
                                  text: "Grand Royal Hotel",
                                  size: FontSize.s18,
                                )),
                                const Flexible(
                                  child: SecondaryText(
                                    text: "Wembley, London",
                                    isLight: true,
                                    isButton: true,
                                  ),
                                ),
                                SizedBox(height: AppHeight.h8),
                                Row(
                                  children: [
                                    const Expanded(child: HotelRating()),
                                    Flexible(
                                        child: Text(
                                      "Rank : 64",
                                      style: getMediumStyle(
                                        fontColor:
                                            AppColors.grey.withOpacity(0.8),
                                        fontSize: FontSize.s14,
                                      ),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const HotelNightPrice(isBooking: true),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
