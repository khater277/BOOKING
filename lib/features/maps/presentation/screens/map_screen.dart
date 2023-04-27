// import 'dart:async';

import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/presentation/widgets/map_floating_search.dart';
import 'package:custom_map_markers/custom_map_markers.dart';
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
        return Scaffold(
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: cubit.currentCameraPosition,
                mapType: MapType.terrain,
                zoomControlsEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                markers: cubit.markers,
                onMapCreated: (GoogleMapController googleMapController) {
                  cubit.createMap(googleMapController: googleMapController);
                },
              ),
              const MapFloatingSearch(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.teal,
            child: const Icon(
              Icons.place,
              color: AppColors.white,
            ),
            onPressed: () {
              // cubit.setMarkers();
              cubit.jumpToLocation(coordinates: HiveHelper.getUserLocation()!);
            },
          ),
        );
      },
    );
  }
}
