import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/map_content/map_hotel_item.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MapsHotels extends StatefulWidget {
  const MapsHotels({
    super.key,
    required this.hotels,
    required this.cubit,
  });

  final List<Hotel> hotels;
  final MapsCubit cubit;

  @override
  State<MapsHotels> createState() => _MapsHotelsState();
}

class _MapsHotelsState extends State<MapsHotels> {
  @override
  void initState() {
    widget.cubit.addPageRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: AppHeight.h120,
          child: PagedListView<int, Hotel>(
            scrollController: widget.cubit.scrollController,
            pagingController: widget.cubit.pagingController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            builderDelegate: PagedChildBuilderDelegate<Hotel>(
              itemBuilder: (context, item, index) => VisibilityDetector(
                  key: Key(index.toString()),
                  onVisibilityChanged: (VisibilityInfo info) {
                    if (info.visibleFraction == 1) {
                      widget.cubit.changeHotelCurrentIndex(index: index);
                    }
                  },
                  child: MapHotelItem(hotel: item)),
            ),
          ),
        ));
  }
}
