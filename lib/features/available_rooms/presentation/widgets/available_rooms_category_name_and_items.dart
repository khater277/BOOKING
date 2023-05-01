import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/available_rooms/presentation/widgets/available_room_card.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/room.dart';
import 'package:flutter/material.dart';

class AvailableRoomsCategoryNameAndItems extends StatelessWidget {
  const AvailableRoomsCategoryNameAndItems({
    super.key,
    required this.availableRoom,
    required this.checkAvailabilityBody,
  });

  final AvailableRoom availableRoom;
  final CheckAvailabilityBody checkAvailabilityBody;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppHeight.h10),
        LargeHeadText(text: "${availableRoom.name}"),
        SizedBox(height: AppHeight.h15),
        ListView.separated(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: availableRoom.availableRates!.length,
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: AppHeight.h20),
          itemBuilder: (BuildContext context, int index) => AvailableRoomCard(
            checkAvailabilityBody: checkAvailabilityBody,
            availableRate: availableRoom.availableRates![index],
          ),
        ),
      ],
    );
  }
}
