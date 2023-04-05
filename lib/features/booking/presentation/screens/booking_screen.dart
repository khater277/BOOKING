import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking/bookings_list.dart';
import 'package:booking/features/booking/presentation/widgets/booking/tab_bar_head.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    BookingCubit.get(context).initTabController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingCubit, BookingState>(
      listener: (context, state) {},
      builder: (context, state) {
        final BookingCubit cubit = BookingCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Padding(
              padding: EdgeInsets.only(top: AppHeight.h10),
              child: LargeHeadText(
                text: "My Bookings",
                size: FontSize.s20,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: DefaultTabController(
                    length: cubit.bookings.length,
                    initialIndex: 0,
                    child: Column(children: [
                      SizedBox(height: AppHeight.h10),
                      TabBarHead(cubit: cubit),
                      BookingsList(cubit: cubit),
                    ])),
              ),
            ],
          ),
        );
      },
    );
  }
}
