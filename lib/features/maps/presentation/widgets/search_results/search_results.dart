import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/search_results/empty/not_matching_search_results.dart';
import 'package:booking/features/maps/presentation/widgets/search_results/not_empty/hotel_search_results.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final MapsCubit cubit;
  const SearchResult({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h10,
        horizontal: AppWidth.w10,
      ),
      // .add(EdgeInsets.only(bottom: AppHeight.h12)),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSize.s15),
      ),
      child: cubit.result.isNotEmpty
          ? HotelSearchResults(cubit: cubit)
          : const NotMatchingSearchResults(),
    );
  }
}
