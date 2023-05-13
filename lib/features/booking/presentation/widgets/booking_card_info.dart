import 'package:booking/core/shared_widgets/network_image.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/presentation/widgets/pop_up_menu.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingCardInfo extends StatelessWidget {
  final BookingDetailsModel bookingDetailsModel;
  const BookingCardInfo({super.key, required this.bookingDetailsModel});
  String getFormattedDate({required String date}) {
    return DateFormat.MMMd().format(DateTime.parse(date));
  }

  @override
  Widget build(BuildContext context) {
    final hotel = BookingCubit.get(context)
        .hotels
        .firstWhere((element) => element.code == bookingDetailsModel.hotelId);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w12),
      child: Column(
        children: [
          Text(
            "${getFormattedDate(date: bookingDetailsModel.checkIn!)} - "
            "${getFormattedDate(date: bookingDetailsModel.checkOut!)}, "
            "1 Room 2 People",
            // "01 Dec - 05 Dec, 1 Room 2 People",
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
              color: Theme.of(context).cardTheme.color,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: AppHeight.h150,
                        child: CustomNetworkImage(
                          imageUrl: hotel.images![0].path == null ||
                                  hotel.images == null
                              ? ""
                              : AppStrings.imagesUrl + hotel.images![0].path!,
                          fit: BoxFit.fill,
                        ),
                      ),
                      BookingPopupMenu(
                        cubit: BookingCubit.get(context),
                      ),
                    ],
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
                                  text: "${hotel.name!.content}",
                                  size: FontSize.s18,
                                )),
                                Flexible(
                                  child: SecondaryText(
                                    text:
                                        "${hotel.city!.content} , ${hotel.address!.street!}",
                                    isLight: true,
                                    isButton: true,
                                  ),
                                ),
                                SizedBox(height: AppHeight.h8),
                                HotelRating(
                                    rate: hotel.categoryCode!.endsWith('EST')
                                        ? double.parse(hotel.categoryCode![0])
                                        : 4.0),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              LargeHeadText(
                                text: "${bookingDetailsModel.price}\$",
                                size: FontSize.s20,
                              ),
                              // SizedBox(height: AppHeight.h2),
                              SecondaryText(
                                text: "/Per night",
                                isButton: true,
                                size: FontSize.s17,
                                isLight: true,
                              ),
                            ],
                          ),
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
