// ignore_for_file: depend_on_referenced_packages

import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:booking/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:booking/features/hotels/data/models/hotel_page_view/hotel_page_view_model.dart';
import 'package:booking/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/domain/usecases/facilities_use_case.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HotelsCubit extends Cubit<HotelsStates> {
  final GetHotelsUseCase getHotelsUseCase;
  final GetFacilitiesUseCase getFacilitiesUseCase;

  HotelsCubit({
    required this.getHotelsUseCase,
    required this.getFacilitiesUseCase,
  }) : super(HotelsInitial());

  static HotelsCubit get(context) => BlocProvider.of<HotelsCubit>(context);

  PageController pageController = PageController();
  ScrollController hotelsScrollController = ScrollController();
  ScrollController hotelDetailsScrollController = ScrollController();

  void disposeHotelDetails() {
    hotelDetailsOpacity = 0;
    emit(DisposeHotelDetails());
  }

  void disposeControllers() {
    pageController.dispose();
    hotelsScrollController.dispose();
  }

  List<HotelPageViewModel> pageViewData = [
    HotelPageViewModel(
      image: AppImages.newYork,
      title: "New York",
      description: "this is first description",
    ),
    HotelPageViewModel(
      image: AppImages.dubai,
      title: "Dubai",
      description: "this is second description",
    ),
    HotelPageViewModel(
      image: AppImages.egypt,
      title: "Cairo",
      description: "this is third description",
    ),
  ];

  int currentIndex = 0;

  void changePageView({int? index}) {
    if (index != null) {
      currentIndex = index;
    } else if (currentIndex == 2) {
      currentIndex = 0;
      pageController.jumpToPage(0);
    } else {
      currentIndex++;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
    }
    emit(HotelsChangePageView());
  }

  double hotelsOpacity = 0;

  void determineHotelsOpacity(BuildContext context) {
    /*
        490 refers to total pixels 320 expandedHeight +
        150 collapsedHeight + 20 sizedbox
      */
    double x = (hotelsScrollController.position.pixels) /
        (MediaQuery.of(context).size.height - AppHeight.h490);
    hotelsOpacity = x >= 1
        ? 1
        : x <= 0
            ? 0.0
            : x;
  }

  void changeHotelsOpacityValue(BuildContext context) {
    hotelsOpacity = 0;
    hotelsScrollController.addListener(() {
      determineHotelsOpacity(context);
      emit(HotelsChangeOpacityValue());
    });
  }

  double hotelDetailsOpacity = 0;
  void determineHotelDetailsOpacity(BuildContext context) {
    /*
        490 refers to total pixels 320 expandedHeight +
        150 collapsedHeight + 20 sizedbox
      */
    double x = (hotelDetailsScrollController.position.pixels) /
        (MediaQuery.of(context).size.height * 0.5);

    hotelDetailsOpacity = x >= 1
        ? 1
        : x <= 0
            ? 0.0
            : x;

    debugPrint("=========>$hotelDetailsOpacity");
  }

  void changeHotelDetailsOpacityValue(BuildContext context) {
    hotelsOpacity = 0;
    hotelDetailsScrollController.addListener(() {
      determineHotelDetailsOpacity(context);
      emit(HotelsChangeOpacityValue());
    });
  }

  void getInit() async {
    emit(GetHotelsLoading());

    hotelsScrollController.addListener(getSomeHotels);

    await getHotels();
    await getFacilities();

    emit(GetHotelsSuccess());
  }

  bool hasNextPage = true;
  HotelsResponseModel? allHotels;
  Future<void> getHotels() async {
    if (HiveHelper.getAllHotels() == null) {
      hotelsScrollController.addListener(getSomeHotels);
      HotelsParamsModel hotelsParamsModel = const HotelsParamsModel(
        language: 'ENG',
        from: 1,
        to: 500,
        countryCode: 'EG',
      );
      final response = await getHotelsUseCase(hotelsParamsModel);
      response.fold(
        (failure) {
          debugPrint("ERROR====>${failure.getMessage()}");
          emit(HotelsError());
        },
        (hotelsResponseModel) async {
          debugPrint("GET HOTELS SUCCESS====>${hotelsResponseModel.total}");
          allHotels = HiveHelper.getAllHotels();
          someHotels = allHotels!.hotels!.sublist(0, 10);
        },
      );
    } else {
      allHotels = HiveHelper.getAllHotels();
    }
  }

  FacilitiesResponseModel? allFacilities = HiveHelper.getAllFacilities();
  Future<void> getFacilities() async {
    FacilitiesParamsModel facilitiesParamsModel = FacilitiesParamsModel(
      fields: 'all',
      from: '1',
      to: '573',
    );
    if (HiveHelper.getAllFacilities() == null) {
      final response = await getFacilitiesUseCase.call(facilitiesParamsModel);
      response.fold((failure) {
        debugPrint("ERROR IN GET FACILITIES ===> ${failure.getMessage()}");
        emit(HotelsError());
      }, (facilitiesResponseModel) {
        allFacilities = facilitiesResponseModel;
        debugPrint(
            "GET FACILITIES DONE===> ${facilitiesResponseModel.facilities!.length}");
      });
    }
  }

  String getFacilityName({
    required List<Facility> hotelFacilities,
    required int index,
  }) {
    FacilityInfo? facilityInfo = allFacilities != null
        ? allFacilities!.facilities!.firstWhereOrNull(
            (element) => element.code == hotelFacilities[index].facilityCode)
        : null;
    String facilityName =
        facilityInfo == null ? "unknown" : facilityInfo.description!.content!;

    String num = hotelFacilities[index].number != null
        ? hotelFacilities[index].number.toString()
        : "";
    return "$facilityName $num";
    // return "${hotelFacilities.length} ${list.length}";
  }

  List<Hotel> someHotels = HiveHelper.getAllHotels() != null
      ? HiveHelper.getAllHotels()!.hotels!.sublist(0, 10)
      : [];
  int from = 0;
  int to = 10;

  void resetHotelsCubitValues() {
    hotelsOpacity = 0;
    someHotels = HiveHelper.getAllHotels() != null
        ? HiveHelper.getAllHotels()!.hotels!.sublist(0, 10)
        : [];
    from = 0;
    to = 10;
    emit(ResetHotelsCubitValues());
  }

  void getSomeHotels() async {
    if (hasNextPage == true &&
        state is! GetHotelsLoading &&
        state is! GetMoreHotelsLoading &&
        hotelsScrollController.position.extentAfter < 300) {
      emit(GetMoreHotelsLoading());
      try {
        if (someHotels.isNotEmpty) {
          from += 10;
          to += from;
        }

        List<Hotel> fetchedList =
            HiveHelper.getSomeHotels(from: from, to: to) ?? [];
        debugPrint("STATUS====>${fetchedList.isNotEmpty}");
        if (fetchedList.isNotEmpty &&
            to <= HiveHelper.getAllHotels()!.hotels!.length - 10) {
          someHotels.addAll(fetchedList);
          // from += 10;
          // to += from;
        } else {
          hasNextPage = false;
        }
        emit(GetMoreHotelsSuccess());
      } catch (error) {
        debugPrint("ERROR===>$error");
        emit(GetMoreHotelsError());
      }
    }
  }
}
