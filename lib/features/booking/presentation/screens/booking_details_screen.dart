import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_availability/body/hotels.dart';
import 'package:booking/features/booking/data/models/check_availability/body/occupancy.dart';
import 'package:booking/features/booking/data/models/check_availability/body/stay.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_adults_and_children.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_check_in_and_out.dart';
import 'package:booking/features/booking/presentation/widgets/booking_details/booking_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingDetailsScreen extends StatefulWidget {
  final int hotelId;
  const BookingDetailsScreen({super.key, required this.hotelId});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  void initState() {
    BookingCubit.get(context).initBookingDetailsControllers();
    super.initState();
  }

  @override
  void dispose() {
    BookingCubit.get(context).disposeBookingDetailsControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, state) {
        final BookingCubit cubit = BookingCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookingName(cubit: cubit),
                SizedBox(height: AppHeight.h10),
                BookingCheckInAndOut(cubit: cubit),
                SizedBox(height: AppHeight.h10),
                BookingAdultsAndChildren(cubit: cubit),
                CustomButton(
                    text: "BOOK",
                    onPressed: () {
                      CheckAvailabilityBody checkAvailabilityBody =
                          CheckAvailabilityBody(
                              stay: Stay(
                                checkIn: cubit.checkInController!.text,
                                checkOut: cubit.checkOutController!.text,
                              ),
                              occupancies: [
                                Occupancy(
                                  rooms: 1,
                                  adults: cubit
                                      .adultsController!.dropDownValue!.value!,
                                  children: cubit.childrenController!
                                      .dropDownValue!.value!,
                                ),
                              ],
                              availabilityBodyHotels: Hotels(
                                  availabilityBodyHotel: [widget.hotelId]));
                      cubit.createBooking(
                          checkAvailabilityBody: checkAvailabilityBody);
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
