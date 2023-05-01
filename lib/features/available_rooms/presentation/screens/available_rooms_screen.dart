import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:booking/features/available_rooms/presentation/widgets/available_rooms_category_name_and_items.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/room.dart';
import 'package:booking/features/hotels/presentation/widgets/hotel_details/app_bar/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvailableRoomsScreen extends StatelessWidget {
  final List<AvailableRoom> availableRooms;
  final CheckAvailabilityBody checkAvailabilityBody;
  const AvailableRoomsScreen(
      {super.key,
      required this.availableRooms,
      required this.checkAvailabilityBody});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvailableRoomsCubit, AvailableRoomsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const HotelDetailsBackIcon(),
            titleSpacing: 0,
            centerTitle: false,
            title: LargeHeadText(
              text: "Available Rooms",
              size: FontSize.s17,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppHeight.h10, horizontal: AppWidth.w10),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: availableRooms.length,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: AppHeight.h20),
              itemBuilder: (BuildContext context, int index) =>
                  AvailableRoomsCategoryNameAndItems(
                availableRoom: availableRooms[index],
                checkAvailabilityBody: checkAvailabilityBody,
              ),
            ),
          ),
        );
      },
    );
  }
}
