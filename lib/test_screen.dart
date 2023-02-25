import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsCubit, HotelsStates>(
      builder: (context, state) {
        final HotelsCubit cubit = HotelsCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: State is! GetHotelsLoading
              ? ListView.separated(
                  itemCount: cubit.allFacilities!.facilities!.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: AppHeight.h10),
                  itemBuilder: (BuildContext context, int index) =>
                      LargeHeadText(
                          text: cubit.allFacilities!.facilities![index]
                              .description!.content!),
                )
              : const Center(child: LargeHeadText(text: "LOADING")),
        );
      },
    );
  }
}
