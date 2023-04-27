import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/search_results/not_empty/hotel_search_name_and_address.dart';
import 'package:flutter/material.dart';

class HotelSearchResults extends StatelessWidget {
  final MapsCubit cubit;
  const HotelSearchResults({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    int length = cubit.result.length >= 5 ? 5 : cubit.result.length;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppHeight.h5),
                child: GestureDetector(
                  onTap: () => cubit.jumpToLocation(
                    coordinates: cubit.result[i].coordinates!,
                    fromSearch: true,
                  ),
                  // Go.to(
                  //     context: context,
                  //     screen: HotelDetailsScreen(hotel: cubit.result[i])),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: AppColors.teal,
                          size: AppSize.s20,
                        ),
                        SizedBox(width: AppWidth.w10),
                        HotelSearchNameAndAddress(hotel: cubit.result[i]),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
