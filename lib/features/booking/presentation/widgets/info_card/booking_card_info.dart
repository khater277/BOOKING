import 'package:booking/core/shared_widgets/circle_indicator.dart';
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
import 'package:booking/features/booking/presentation/widgets/info_card/hotel_name_address_and_rating.dart';
import 'package:booking/features/booking/presentation/widgets/info_card/image_and_pop_up_menu.dart';
import 'package:booking/features/booking/presentation/widgets/info_card/pop_up_menu.dart';
import 'package:booking/features/booking/presentation/widgets/info_card/price_per_night.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              child: BlocBuilder<BookingCubit, BookingState>(
                builder: (context, state) {
                  BookingCubit cubit = BookingCubit.get(context);
                  return state == const BookingState.updateMyBookingLoading() &&
                          cubit.bookings[cubit.tabBarIndex].loadingBookings!
                              .contains(bookingDetailsModel.bookingId)
                      ? Center(
                          child: CustomCircleIndicator(
                          size: AppSize.s35,
                          strokeWidth: AppSize.s3,
                          // strokeWidth: AppSize.s2,
                        ))
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BookingImageAndPopUpMenu(
                                hotel: hotel,
                                bookingDetailsModel: bookingDetailsModel),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppWidth.w12,
                                  vertical: AppHeight.h8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: BookingHotelNameAddressAndRating(
                                          hotel: hotel),
                                    ),
                                    PricePerNight(
                                        price: bookingDetailsModel.price!),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
