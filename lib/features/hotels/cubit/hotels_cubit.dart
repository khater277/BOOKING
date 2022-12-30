import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_state.dart';
import 'package:booking/features/hotels/data/models/hotel_page_view/hotel_page_view_model.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelsCubit extends Cubit<HotelsStates> {
  final GetHotelsUseCase getHotelsUseCase;
  HotelsCubit({required this.getHotelsUseCase}) : super(HotelsInitial());

  static HotelsCubit get(context) => BlocProvider.of<HotelsCubit>(context);

  PageController pageController = PageController();
  ScrollController scrollController = ScrollController();
  // void disposeControllers() {
  //   pageController.dispose();
  //   // scrollController.dispose();
  //   emit(HotelsDisposeControllers());
  // }

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
  // void changePageView({required int index}) {
  //   currentIndex = index;
  //   emit(HotelsChangePageView());
  // }

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

  double opacity = 0;
  void determineContentOpacity(BuildContext context) {
    /*
        490 refers to total pixels 320 expandedHeight +
        150 collapsedHeight + 20 sizedbox
      */
    double x = (scrollController.position.pixels) /
        (MediaQuery.of(context).size.height - AppHeight.h490);
    opacity = x >= 1
        ? 1
        : x <= 0
            ? 0.0
            : x;

    emit(HotelsDetermineContentOpacity());
  }

  void zeroOpacity() {
    opacity = 0;
    emit(HotelsDetermineContentOpacity());
  }

  // code ,name ,description,countryCode,coordinates,address ,city,email,phones,facilities,images,

  // void addListenerToController() {
  // scrollController.addListener(getSomeHotels);
  // emit(AddListenerToController());
  // }

  bool hasNextPage = true;
  HotelsResponseModel? allHotels;
  // List<Hotel> hotels = [];
  // int from = 0;
  // int to = 10;
  void getHotels() async {
    emit(GetHotelsLoading());
    // scrollController.addListener(getSomeHotels);
    HotelsBodyModel hotelsBodyModel = const HotelsBodyModel(
      language: 'ENG',
    );
    final response = await getHotelsUseCase(hotelsBodyModel);
    response.fold(
      (failure) => emit(HotelsError()),
      (hotelsResponseModel) {
        HiveHelper.setAllHotels(hotelsResponseModel: hotelsResponseModel);
        allHotels = HiveHelper.getAllHotels();
        // hotels = hotelsResponseModel.hotels!.sublist(from, to);
        // from += 10;
        // to += 10;
        // print(hotelsResponseModel.hotels![0].address);
        emit(GetHotelsSuccess());
      },
    );
  }

  // List<Hotel> someHotels = [];
  // void getSomeHotels() async {
  //   if (hasNextPage == true &&
  //       state is! GetHotelsLoading &&
  //       state is! GetMoreHotelsLoading &&
  //       scrollController.position.extentAfter < 300) {
  //     emit(GetMoreHotelsLoading());
  //     try {
  //       List<Hotel> fetchedList =
  //           HiveHelper.getSomeHotels(from: from, to: to) ?? [];
  //       if (fetchedList.isNotEmpty) {
  //         hotels.addAll(fetchedList);
  //         from += 10;
  //         to += 10;
  //       } else {
  //         hasNextPage = false;
  //       }
  //       emit(GetMoreHotelsSuccess());
  //     } catch (error) {
  //       debugPrint("ERROR===>$error");
  //       emit(GetMoreHotelsError());
  //     }
  //   }
  // someHotels = [];
  // HotelsBodyModel hotelsBodyModel = HotelsBodyModel(
  //   language: 'ENG',
  //   from: from,
  //   to: to,
  // );
  // final response = await getHotelsUseCase(hotelsBodyModel);
  // response.fold(
  //   (failure) => {emit(HotelsError())},
  //   (hotelsResponseModel) {
  //     HiveHelper.setAllHotels(hotelsResponseModel: hotelsResponseModel);
  //     allHotels = HiveHelper.getAllHotels();
  //     someHotels = hotelsResponseModel.hotels!;
  //     emit(GetHotelsSuccess());
  //   },
  // );
  // }
}
