import 'package:booking/core/shared_widgets/network_image.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/presentation/widgets/info_card/pop_up_menu.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:flutter/material.dart';

class BookingImageAndPopUpMenu extends StatelessWidget {
  const BookingImageAndPopUpMenu({
    super.key,
    required this.hotel,
    required this.bookingDetailsModel,
  });

  final Hotel hotel;
  final BookingDetailsModel bookingDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          width: double.infinity,
          height: AppHeight.h150,
          child: CustomNetworkImage(
            imageUrl: hotel.images![0].path == null || hotel.images == null
                ? ""
                : AppStrings.imagesUrl + hotel.images![0].path!,
            fit: BoxFit.fill,
          ),
        ),
        BookingPopupMenu(
          cubit: BookingCubit.get(context),
          bookingId: bookingDetailsModel.bookingId!,
        ),
      ],
    );
  }
}
