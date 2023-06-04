import 'dart:async';
import 'dart:ui' as ui;

import 'package:booking/core/apis/maps/maps_end_points.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/custom_info_window.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:booking/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';
import 'package:booking/features/maps/domain/usecases/places_suggestions_usecase.dart';
import 'package:booking/features/maps/presentation/widgets/map_content/hotel_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';
part 'maps_cubit.freezed.dart';
part 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  final PlacesSuggestionsUsecase placesSuggestionUsecase;
  final HotelsCubit hotelsCubit;
  MapsCubit({
    required this.placesSuggestionUsecase,
    required this.hotelsCubit,
  }) : super(const MapsState.initial());

  static MapsCubit get(context) => BlocProvider.of<MapsCubit>(context);

  final Completer<GoogleMapController> completer =
      Completer<GoogleMapController>();

  FloatingSearchBarController floatingSearchBarController =
      FloatingSearchBarController();

  HotelsResponseModel? hotels = HiveHelper.getAllHotels();

  void createMap({required GoogleMapController googleMapController}) {
    completer.complete(googleMapController);
    infoWindowController.googleMapController = googleMapController;
    emit(const MapsState.createMap());
  }

  void tapOnMap() {
    infoWindowController.hideInfoWindow!();
    emit(const MapsState.tapOnMap());
  }

  void moveCameraOnMap(
      {required Coordinates coordinates, required BuildContext context}) {
    infoWindowController.onCameraMove!();
    emit(const MapsState.moveCameraOnMap());
    // final hotel = hotels!.hotels!.firstWhereOrNull((element) =>
    //     Coordinates(
    //       latitude:
    //           double.parse(element.coordinates!.latitude!.toStringAsFixed(3)),
    //       longitude:
    //           double.parse(element.coordinates!.longitude!.toStringAsFixed(3)),
    //     ) ==
    //     coordinates);

    // if (hotel != null) {
    //   jumpToLocation(
    //     coordinates: coordinates,
    //     id: hotel.code!,
    //     context: context,
    //   );
    // } else {
    //   emit(const MapsState.moveCameraOnMap());
    // }
  }

  Set<Marker> markers = {};
  List<CustomInfoWindowController> windowsControllers = [];
  CustomInfoWindowController infoWindowController =
      CustomInfoWindowController();
  void setMarkers({required BuildContext context}) async {
    for (int i = 0; i < hotels!.hotels!.length; i++) {
      final hotel = hotels!.hotels![i];
      int stars = 0;
      try {
        stars = int.parse(hotel.categoryCode![0]);
      } catch (e) {
        stars = 4;
        // print('hotel.categoryCode![0]')
        print("=========>${hotel.code}");
        print("=========>${hotel.categoryCode![0]}");
        print("=========>${hotel.name!.content}");
      }
      await addHotelMarker(
        context: context,
        hotel: hotel,
        stars: int.parse(
            hotel.categoryCode!.endsWith('EST') ? hotel.categoryCode![0] : '4'),
      );
    }
    emit(const MapsState.setMapMarkers());
  }

  Future<void> addHotelMarker({
    required BuildContext context,
    required Hotel hotel,
    required int stars,
  }) async {
    markers.add(Marker(
      markerId: MarkerId('${hotel.code}'),
      position: LatLng(
        hotel.coordinates!.latitude!,
        hotel.coordinates!.longitude!,
      ),
      onTap: () {
        infoWindowController.addInfoWindow!(
          HotelInfoWindow(hotelName: hotel.name!.content!),
          LatLng(
            hotel.coordinates!.latitude!,
            hotel.coordinates!.longitude!,
          ),
        );

        final index = hotels!.hotels!.indexOf(hotel);
        print("===========>${index != hotelCurrentIndex}");
        if (index != hotelCurrentIndex) {
          jumpToLocation(
            coordinates: hotel.coordinates!,
            id: hotel.code!,
            context: context,
          );
        }
      },
      icon: await bitmapDescriptorFromSvgAsset(
        stars: stars,
      ), //Icon for Marker
    ));
  }

  Future<BitmapDescriptor> bitmapDescriptorFromSvgAsset({
    required int stars,
  }) async {
    String svgStrings = stars == 1
        ? AppImages.star1
        : stars == 2
            ? AppImages.star2
            : stars == 3
                ? AppImages.star3
                : stars == 4
                    ? AppImages.star4
                    : AppImages.star5;

    DrawableRoot svgDrawableRoot = await svg.fromSvgString(
      svgStrings,
      'globalKey',
    );

    final double height = 100.h;
    final double width = 200.w;

    ui.Picture picture = svgDrawableRoot.toPicture(size: Size(width, height));

    ui.Image image = await picture.toImage(width.toInt(), height.toInt());
    ByteData? bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
  }

  CameraPosition currentCameraPosition = CameraPosition(
    target: LatLng(
      HiveHelper.getUserLocation()!.latitude!,
      HiveHelper.getUserLocation()!.longitude!,
    ),
    bearing: 0.0,
    tilt: 0.0,
    zoom: 17.0,
  );
  ScrollController scrollController = ScrollController();
  void jumpToLocation({
    required Coordinates coordinates,
    bool fromSearch = false,
    int? id,
    BuildContext? context,
  }) async {
    CameraPosition currentCameraPosition = CameraPosition(
      target: LatLng(
        coordinates.latitude!,
        coordinates.longitude!,
      ),
      bearing: 0.0,
      tilt: 0.0,
      zoom: 17.0,
    );
    GoogleMapController controller = await completer.future;
    controller
        .animateCamera(CameraUpdate.newCameraPosition(currentCameraPosition));

    if (fromSearch) {
      floatingSearchBarController.close();
    }
    if (id != null) {
      final searchedHotel =
          hotels!.hotels!.firstWhere((element) => element.code == id);
      final index = hotels!.hotels!.indexOf(searchedHotel);
      final widthPixels = index * (MediaQuery.of(context!).size.width * 0.8);
      final paddingPixels = (AppWidth.w20 * index);
      final position = widthPixels + paddingPixels;

      scrollController.animateTo(
        position,
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn,
      );
      // scrollController.jumpTo(position);
    }

    emit(const MapsState.jumpToPosition());
  }

  List<Hotel> result = [];
  void searchHotel() {
    emit(const MapsState.searchHotelLoading());
    result = HiveHelper.getAllHotels()!.hotels!.where((element) {
      return element.name!.content!
          .toLowerCase()
          .contains(floatingSearchBarController.query.toLowerCase());
    }).toList();
    print(result.length);
    emit(const MapsState.searchHotel());
  }

  int hotelCurrentIndex = 0;
  ScrollController mapsScrollController = ScrollController();
  void changeHotelCurrentIndex({required int index}) {
    hotelCurrentIndex = index;
    final currentHotel = hotels!.hotels![index];
    print(hotelCurrentIndex);
    jumpToLocation(coordinates: currentHotel.coordinates!);
  }
}
