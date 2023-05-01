import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/shared_widgets/snack_bar.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/available_rooms/presentation/screens/available_rooms_screen.dart';
import 'package:booking/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/body/hotels.dart';
import 'package:booking/features/create_booking/data/models/body/occupancy.dart';
import 'package:booking/features/create_booking/data/models/body/stay.dart';
import 'package:booking/features/create_booking/presentation/widgets/create_booking_adults_and_children.dart';
import 'package:booking/features/create_booking/presentation/widgets/create_booking_check_in_and_out.dart';
import 'package:booking/features/create_booking/presentation/widgets/create_booking_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateBookingScreen extends StatefulWidget {
  final int hotelId;
  const CreateBookingScreen({super.key, required this.hotelId});

  @override
  State<CreateBookingScreen> createState() => _CreateBookingScreenState();
}

class _CreateBookingScreenState extends State<CreateBookingScreen> {
  CreateBookingCubit? createBookingCubit;
  @override
  void initState() {
    createBookingCubit = CreateBookingCubit.get(context);
    createBookingCubit!.initCreateBookingControllers();
    super.initState();
  }

  @override
  void dispose() {
    createBookingCubit!.disposeCreateBookingControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBookingCubit, CreateBookingState>(
      listener: (context, state) {
        state.maybeWhen(
          noAvailableRooms: () => showSnackBar(
            context: context,
            message: "Sorry , There is no available rooms for that reservation",
            color: AppColors.red,
          ),
          findAvailableRooms: (availableRooms, checkAvailabilityBody) => Go.to(
              context: context,
              screen: AvailableRoomsScreen(
                availableRooms: availableRooms,
                checkAvailabilityBody: checkAvailabilityBody,
              )),
          checkAvailableRoomsError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        final CreateBookingCubit cubit = CreateBookingCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w20),
            child: Form(
              key: cubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CreateBookingName(cubit: cubit),
                  SizedBox(height: AppHeight.h10),
                  CreateBookingCheckInAndOut(cubit: cubit),
                  SizedBox(height: AppHeight.h10),
                  CreateBookingAdultsAndChildren(cubit: cubit),
                  SizedBox(height: AppHeight.h10),
                  CustomButton(
                      text: "Continue",
                      onPressed: () {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.checkAvailableRooms(hotelId: widget.hotelId);
                        }
                      })
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
