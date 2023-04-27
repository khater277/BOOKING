import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:booking/core/apis/maps/maps_end_points.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:booking/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';
import 'package:booking/features/maps/domain/usecases/places_suggestions_usecase.dart';
import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    emit(const MapsState.createMap());
  }

  Set<Marker> markers = {};

  void setMarkers() async {
    for (int i = 0; i < hotels!.hotels!.length; i++) {
      final hotel = hotels!.hotels![i];
      BitmapDescriptor markerbitmap = await bitmapDescriptorFromSvgAsset(
        price: "200",
      );
      markers.add(Marker(
        markerId: MarkerId('${hotel.code}'),
        position: LatLng(
          hotel.coordinates!.latitude!,
          hotel.coordinates!.longitude!,
        ),
        infoWindow: InfoWindow(
          title: "${hotel.name!.content}",
          snippet: "${hotel.address!.content}",
        ),
        icon: markerbitmap, //Icon for Marker
      ));
    }
    emit(const MapsState.setMapMarkers());
  }

  Future<BitmapDescriptor> bitmapDescriptorFromSvgAsset({
    required String price,
  }) async {
    String svgStrings = '''
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

  void jumpToLocation({
    required Coordinates coordinates,
    bool fromSearch = false,
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

    if (fromSearch) floatingSearchBarController.close();

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
}
