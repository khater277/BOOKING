import 'dart:async';
import 'dart:ui' as ui;

import 'package:booking/core/apis/maps/maps_end_points.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/custom_info_window.dart';
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

  void moveCameraOnMap() {
    infoWindowController.onCameraMove!();
    emit(const MapsState.moveCameraOnMap());
  }

  Set<Marker> markers = {};
  List<CustomInfoWindowController> windowsControllers = [];
  CustomInfoWindowController infoWindowController =
      CustomInfoWindowController();
  void setMarkers() async {
    for (int i = 0; i < hotels!.hotels!.length; i++) {
      final hotel = hotels!.hotels![i];
      await addHotelMarker(
        hotel: hotel,
        price: "200",
      );
    }
    emit(const MapsState.setMapMarkers());
  }

  Future<void> addHotelMarker({
    required Hotel hotel,
    required String price,
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
      },
      icon: await bitmapDescriptorFromSvgAsset(
        price: price,
      ), //Icon for Marker
    ));
  }

  Future<BitmapDescriptor> bitmapDescriptorFromSvgAsset({
    required String price,
  }) async {
    String svgStrings =
        '''
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
 id="ed2zjlYqLD31" viewBox="0 0 1920 1080" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
 
 <rect xmlns="http://www.w3.org/2000/svg" 
 width="1374.822191" height="617.581793" 
 rx="300" ry="300" transform="translate(251.778094 86.031295)" 
 fill="#4fbe9e" stroke-width="0"/>
 
 <text dx="-70.0" dy="0" font-family="&quot;ed2zjlYqLD31:::Montserrat&quot;" font-size="155" font-weight="700" transform="matrix(1.929848 0 0 1.87804 727.600721 493.31223)" fill="#fff" stroke-width="0"><tspan y="0" font-weight="600" stroke-width="0"><![CDATA[
\$$price
]]>
</tspan>
</text>

<line x1="0" y1="-162.84495" x2="0" y2="162.844949"
 transform="translate(972.290185 854.167853)" 
 fill="none" stroke="#4fbe9e" stroke-width="65"/>

 <ellipse xmlns="http://www.w3.org/2000/svg" rx="55.305832" ry="48.419049" transform="translate(972.290185 1017.012802)" fill="#4fbe9e" stroke-width="0"/>
</svg>
        ''';

    DrawableRoot svgDrawableRoot = await svg.fromSvgString(
      svgStrings,
      'globalKey',
    );

    final double height = 180.h;
    final double width = 270.w;

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
      scrollController.jumpTo(position);
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

  void getPlacesSuggestions() async {
    emit(const MapsState.getPlacesSuggestionsLoading());
    PlacesSuggestionsParams placesSuggestionsParams = PlacesSuggestionsParams(
      key: MapsEndPoints.apiKey,
      input: 'kafr eldawar',
      components: 'country:eg',
      types: 'address',
      sessionToken: const Uuid().v4(),
    );
    final response =
        await placesSuggestionUsecase.call(placesSuggestionsParams);

    response.fold((error) {
      print(error.getMessage());
      emit(const MapsState.getPlacesSuggestionsError());
    }, (PlacesSuggestions placesSuggestions) {
      print(placesSuggestions.predictions!.length);
      emit(const MapsState.getPlacesSuggestionsSuccess());
    });
  }

  int hotelCurrentIndex = 0;
  ScrollController mapsScrollController = ScrollController();
  void changeHotelCurrentIndex({required int index}) {
    hotelCurrentIndex = index;
    final currentHotel = hotels!.hotels![index];
    jumpToLocation(coordinates: currentHotel.coordinates!);
  }

  int init = 0;
  int end = 20;
  int pageSize = 20;

  PagingController<int, Hotel> pagingController =
      PagingController(firstPageKey: 0);

  void addPageRequest() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPage(pageKey);
      emit(const MapsState.addPageRequest());
    });
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final newItems = hotels!.hotels!.sublist(init, end);
      final isLastPage = newItems.length < pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        init += end;
        end += pageSize;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }
}
