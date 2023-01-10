import 'package:booking/core/shared_widgets/network_image.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/hotel_info.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/more_details_button.dart';
import 'package:flutter/material.dart';

class FlexibleSpaceContent extends StatelessWidget {
  final Hotel hotel;
  const FlexibleSpaceContent({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: CustomNetworkImage(
            imageUrl: AppStrings.imagesUrl + hotel.images![0].path!,
            fit: BoxFit.fill,
          ),
        ),
        AnimatedOpacity(
          opacity: 1 - HotelsCubit.get(context).hotelDetailsOpacity,
          duration: const Duration(microseconds: 100),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HotelInfoAppBar(hotel: hotel),
                const MoreDetailsButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
