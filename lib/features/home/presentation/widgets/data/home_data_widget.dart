import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_app_bar/hotels_app_bar.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/best_deals_head.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_info_card.dart';
import 'package:flutter/material.dart';

class HomeDataWidget extends StatelessWidget {
  final HotelsCubit cubit;
  const HomeDataWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification &&
            cubit.scrollController.position.isScrollingNotifier.value) {
          cubit.determineContentOpacity(context);
        }
        return true;
      },
      child: CustomScrollView(
        controller: cubit.scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          HotelsAppBar(cubit: cubit),
          // LargeHeadText(text: "${HiveHelper.getAllHotels()}")
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: AppHeight.h15),
                BestDealsHead(cubit: cubit),
                Flexible(
                  fit: FlexFit.loose,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cubit.someHotels.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: AppHeight.h25,
                    ),
                    itemBuilder: (BuildContext context, int index) =>
                        HotelInfoCard(hotel: cubit.someHotels[index]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
