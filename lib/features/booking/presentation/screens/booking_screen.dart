import 'package:booking/core/shared_widgets/circle_indicator.dart';
import 'package:booking/core/shared_widgets/snack_bar.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/presentation/widgets/booking_error.dart';
import 'package:booking/features/booking/presentation/widgets/booking_success.dart';
import 'package:booking/features/booking/presentation/widgets/bookings_list.dart';
import 'package:booking/features/booking/presentation/widgets/tab_bar_head.dart';
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
    // BookingCubit.get(context).getMyBookings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingCubit, BookingState>(
      listener: (context, state) {
        state.maybeWhen(
          updateMyBookingError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          orElse: () {},
        );
      },
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
          body: state.maybeWhen(
            getMyBookingLoading: () => Center(
              child: CustomCircleIndicator(
                size: AppSize.s40,
                color: AppColors.teal,
                strokeWidth: AppSize.s3,
              ),
            ),
            getMyBookingError: (errorMsg) =>
                BookingErrorWidget(errorMsg: errorMsg),
            orElse: () => BookingSuccessWidget(cubit: cubit),
          ),
        );
      },
    );
  }
}
