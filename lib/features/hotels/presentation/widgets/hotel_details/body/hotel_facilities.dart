// ignore_for_file: depend_on_referenced_packages

import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class HotelFacilities extends StatelessWidget {
  final HotelsCubit cubit;
  final List<Facility> hotelFacilities;
  const HotelFacilities(
      {super.key, required this.hotelFacilities, required this.cubit});

  @override
  Widget build(BuildContext context) {
    int index = 8;
    FacilityInfo? facilityInfo = cubit.allFacilities != null
        ? cubit.allFacilities!.facilities!.firstWhereOrNull(
            (element) => element.code == hotelFacilities[index].facilityCode)
        : null;
    String facilityName =
        facilityInfo == null ? "unknown" : facilityInfo.description!.content!;

    return LargeHeadText(text: facilityName);
  }
}
