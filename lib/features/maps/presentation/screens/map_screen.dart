// import 'dart:async';

import 'package:booking/core/shared_widgets/custom_info_window.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/map_content/map_floating_search.dart';
import 'package:booking/features/maps/presentation/widgets/map_content/mapp_hotels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        final cubit = MapsCubit.get(context);
        final List<Hotel> hotels = cubit.hotels!.hotels!.sublist(0, 10);
        return Scaffold(
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: cubit.currentCameraPosition,
                mapType: MapType.terrain,
                zoomControlsEnabled: true,
                // myLocationEnabled: true,
                myLocationButtonEnabled: false,
                markers: cubit.markers,
                onMapCreated: (GoogleMapController googleMapController) {
                  cubit.createMap(googleMapController: googleMapController);
                },
                onTap: (position) => cubit.tapOnMap(),
                onCameraMove: (position) => cubit.moveCameraOnMap(
                  coordinates: Coordinates(
                    latitude: double.parse(
                        position.target.latitude.toStringAsFixed(3)),
                    longitude: double.parse(
                        position.target.longitude.toStringAsFixed(3)),
                  ),
                  context: context,
                ),
                // on
              ),
              CustomInfoWindow(
                (top, left, width, height) => null,
                controller: cubit.infoWindowController,
                height: AppHeight.h60,
                width: AppWidth.w200,
                offset: AppSize.s60,
              ),
              MapsHotels(
                hotels: hotels,
                cubit: cubit,
              ),
              const MapFloatingSearch(),
            ],
          ),
        );
      },
    );
  }
}
