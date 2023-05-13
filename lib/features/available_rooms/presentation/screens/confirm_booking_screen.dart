import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/shared_widgets/snack_bar.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/body/holder.dart';
import 'package:booking/features/available_rooms/presentation/widgets/check_out_booking_text_field_and_title.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmBookingScreen extends StatefulWidget {
  final CheckAvailabilityBody checkAvailabilityBody;
  final AvailableRate availableRate;
  final Holder holder;
  final String roomName;
  final int hotelId;
  const ConfirmBookingScreen({
    super.key,
    required this.checkAvailabilityBody,
    required this.availableRate,
    required this.holder,
    required this.roomName,
    required this.hotelId,
  });

  @override
  State<ConfirmBookingScreen> createState() => _ConfirmBookingScreenState();
}

class _ConfirmBookingScreenState extends State<ConfirmBookingScreen> {
  late AvailableRoomsCubit availableRoomsCubit;

  @override
  void initState() {
    availableRoomsCubit = AvailableRoomsCubit.get(context);
    availableRoomsCubit.initConfirmBookingControllers(
      holder: widget.holder,
      checkAvailabilityBody: widget.checkAvailabilityBody,
      availableRate: widget.availableRate,
      roomName: widget.roomName,
    );
    super.initState();
  }

  @override
  void dispose() {
    availableRoomsCubit.disposeConfirmBookingControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvailableRoomsCubit, AvailableRoomsState>(
      listener: (context, state) {
        state.maybeWhen(
          createBookingError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          createBookingSuccess: () {
            Go.back(context: context);
            showSnackBar(
              context: context,
              message: "Booking created successfully",
              color: AppColors.teal,
            );
            BookingCubit.get(context).getMyBookings();
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final cubit = AvailableRoomsCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w20)
                .add(EdgeInsets.only(top: AppHeight.h70)),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: CheckOutBookingTextFieldAndTitle(
                          controller: cubit.firstNameController!,
                          title: "First Name",
                          icon: Icons.person_outline,
                        ),
                      ),
                      SizedBox(width: AppWidth.w10),
                      Flexible(
                        child: CheckOutBookingTextFieldAndTitle(
                          controller: cubit.lastNameController!,
                          title: "Last Name",
                          icon: Icons.person_outline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppHeight.h10),
                  CheckOutBookingTextFieldAndTitle(
                    controller: cubit.checkInController!,
                    title: "Check in",
                    icon: Icons.input_outlined,
                  ),
                  SizedBox(height: AppHeight.h10),
                  CheckOutBookingTextFieldAndTitle(
                    controller: cubit.checkOutController!,
                    title: "Check out",
                    icon: Icons.output_outlined,
                  ),
                  SizedBox(height: AppHeight.h10),
                  Row(
                    children: [
                      Flexible(
                        child: CheckOutBookingTextFieldAndTitle(
                          controller: cubit.adultsController!,
                          title: "Adults",
                          icon: Icons.people_outline,
                        ),
                      ),
                      SizedBox(width: AppWidth.w10),
                      Flexible(
                        child: CheckOutBookingTextFieldAndTitle(
                          controller: cubit.childrenController!,
                          title: "Children",
                          icon: Icons.child_care,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppHeight.h10),
                  CheckOutBookingTextFieldAndTitle(
                    controller: cubit.categoryController!,
                    title: "Category",
                    icon: Icons.category_outlined,
                  ),
                  SizedBox(height: AppHeight.h10),
                  CheckOutBookingTextFieldAndTitle(
                    controller: cubit.boardController!,
                    title: "Board",
                    icon: FontAwesomeIcons.bowlFood,
                  ),
                  SizedBox(height: AppHeight.h10),
                  CheckOutBookingTextFieldAndTitle(
                    controller: cubit.priceController!,
                    title: "Price",
                    icon: FontAwesomeIcons.dollarSign,
                  ),
                  SizedBox(height: AppHeight.h20),
                  CustomButton(
                    text: "Confirm",
                    loadingCondition: state ==
                        const AvailableRoomsState.createBookingLoading(),
                    onPressed: () {
                      cubit.createBooking(
                          rateKey: widget.availableRate.rateKey!,
                          hotelId: widget.hotelId);
                    },
                  ),
                  SizedBox(height: AppHeight.h20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
