import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_app_bar/hotels_app_bar.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/best_deals_head.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDataWidget extends StatelessWidget {
  final HotelsCubit cubit;
  const HomeDataWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: cubit.hotelsScrollController,
      physics: const BouncingScrollPhysics(),
      slivers: [
        HotelsAppBar(cubit: cubit),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: AppHeight.h15),
              const BestDealsHead(),
              BlocBuilder<HotelsCubit, HotelsStates>(
                buildWhen: (previous, current) =>
                    previous != current && current is AddPageRequest,
                builder: (context, state) {
                  return Flexible(
                    fit: FlexFit.loose,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: HotelsCubit.get(context).someHotels.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: AppHeight.h25,
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          HotelInfoCard(
                              hotel:
                                  HotelsCubit.get(context).someHotels[index]),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
