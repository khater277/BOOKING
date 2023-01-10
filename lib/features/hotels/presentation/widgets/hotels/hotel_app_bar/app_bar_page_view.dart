import 'dart:async';

import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_app_bar/page_indicator.dart';
import 'package:booking/features/hotels/presentation/widgets/hotels/hotel_app_bar/page_title_and_description.dart';
import 'package:flutter/material.dart';

class AppBarPageView extends StatefulWidget {
  final HotelsCubit cubit;

  const AppBarPageView({super.key, required this.cubit});

  @override
  State<AppBarPageView> createState() => _AppBarPageViewState();
}

class _AppBarPageViewState extends State<AppBarPageView> {
  late Timer timer;
  @override
  void initState() {
    // if (widget.cubit.scrollController.positions.isNotEmpty) {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      widget.cubit.changePageView();
    });
    // }
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    widget.cubit.changePageView(index: 0);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: widget.cubit.pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (index) {
            widget.cubit.changePageView(index: index);
          },
          itemCount: widget.cubit.pageViewData.length,
          itemBuilder: (context, index) {
            return Image.asset(
              widget.cubit.pageViewData[widget.cubit.currentIndex].image,
              fit: BoxFit.fill,
            );
          },
        ),
        PageIndicator(cubit: widget.cubit),
        //(MediaQuery.of(context).size.height - AppHeight.h490)
        /// (cubit.scrollController.position.pixels)
        /// لو اقل من 1
        AnimatedOpacity(
          opacity: 1 - widget.cubit.hotelsOpacity,
          duration: const Duration(microseconds: 100),
          child: Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                PageTitleAndDescription(
                  title: widget
                      .cubit.pageViewData[widget.cubit.currentIndex].title,
                  description: widget.cubit
                      .pageViewData[widget.cubit.currentIndex].description,
                ),
                SizedBox(height: AppHeight.h15),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: AppHeight.h30,
                    right: AppWidth.w230,
                    left: AppWidth.w10,
                  ),
                  child: CustomButton(
                    text: "View Hotel",
                    onPressed: () {
                      HotelsResponseModel? test = HiveHelper.getAllHotels();
                      debugPrint(test!.hotels!.length.toString());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
