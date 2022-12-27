import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/features/home/presentation/widgets/data/home_data_widget.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelsCubit, HotelsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final HotelsCubit cubit = HotelsCubit.get(context);
        return Scaffold(
          body: state is GetHotelsLoading
              ? const Center(child: LargeHeadText(text: "LOADING"))
              : HomeDataWidget(cubit: cubit),
        );
      },
    );
  }
}
