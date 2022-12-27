import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/cubit/booking_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingCubit, BookingStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return const Scaffold(
          body: Center(child: LargeHeadText(text: "BOOKING SCREEN")),
        );
      },
    );
  }
}
