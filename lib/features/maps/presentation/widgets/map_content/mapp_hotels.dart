import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/map_content/map_hotel_item.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MapsHotels extends StatelessWidget {
  const MapsHotels({
    super.key,
    required this.hotels,
    required this.cubit,
  });

  final List<Hotel> hotels;
  final MapsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: AppHeight.h120,
          child: ListView.builder(
            controller: cubit.scrollController,
            // pagingController: widget.cubit.pagingController,
            itemCount: cubit.hotels!.hotels!.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => VisibilityDetector(
              key: Key(index.toString()),
              onVisibilityChanged: (VisibilityInfo info) {
                if (info.visibleFraction == 1) {
                  cubit.changeHotelCurrentIndex(index: index);
                }
              },
              child: MapHotelItem(hotel: cubit.hotels!.hotels![index]),
            ),
          ),
        ));
  }
}
