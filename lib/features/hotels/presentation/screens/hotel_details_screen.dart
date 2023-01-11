import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/app_bar/app_bar.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/body/hotel_description.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/body/hotel_details_head.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/body/hotel_photos/hotel_photos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelDetailsScreen extends StatefulWidget {
  final Hotel hotel;
  const HotelDetailsScreen({super.key, required this.hotel});

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  late HotelsCubit cubit;
  @override
  void initState() {
    cubit = HotelsCubit.get(context);
    super.initState();
  }

  @override
  void dispose() {
    cubit.disposeHotelDetails();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelsCubit, HotelsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final HotelsCubit cubit = HotelsCubit.get(context);
          return Scaffold(
            body: CustomScrollView(
              controller: cubit.hotelDetailsScrollController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              slivers: [
                HotelDetailsAppBar(hotel: widget.hotel),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: AppHeight.h20),
                        HotelDetailsHead(hotel: widget.hotel),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: AppHeight.h10),
                          child: Divider(
                            thickness: 0.7,
                            color: AppColors.grey.withOpacity(0.2),
                          ),
                        ),
                        HotelDescription(
                          description: widget.hotel.description!.content!,
                        ),
                        SizedBox(height: AppHeight.h20),
                        HotelPhotos(
                          images: widget.hotel.images!.toSet().toList(),
                        ),
                        SizedBox(height: AppHeight.h50),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
