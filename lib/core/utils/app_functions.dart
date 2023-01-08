import 'dart:convert';

import 'package:booking/core/api/end_points.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:crypto/crypto.dart';
import 'package:geolocator/geolocator.dart';

class AppFunctions {
  static String? handleTextFieldValidator({
    required List<bool> conditions,
    required List<String> messages,
  }) {
    String? result;
    for (int i = 0; i < conditions.length; i++) {
      if (conditions[i]) {
        result = messages[i];
      }
      if (result != null) break;
    }
    return result;
  }

  static String generateSHA256() {
    String timeStamp =
        (DateTime.now().millisecondsSinceEpoch / 1000).round().toString();
    final input = utf8.encode(EndPoints.apiKey + EndPoints.secret + timeStamp);
    return sha256.convert(input).toString();
  }

  static String generateCountryFlag({required String countryCode}) {
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }

  static Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition();

    await HiveHelper.setUserLocation(
        userCoordinates: Coordinates(
      latitude: position.latitude,
      longitude: position.longitude,
    ));

    return position;
  }

  static int determineDistanceToHotel({
    required Coordinates coordinates,
  }) {
    return Geolocator.distanceBetween(
      HiveHelper.getUserLocation()!.latitude!,
      HiveHelper.getUserLocation()!.longitude!,
      coordinates.latitude!,
      coordinates.longitude!,
    ).round();
  }

  static String formatDistance({required int distance}) {
    if (distance >= 1000) {
      int length = (distance / 1000).round();
      if (length >= 1000) {
        return "${(length / 1000).round()}k KM";
      } else {
        return "$length KM";
      }
    } else {
      return "$distance M";
    }
  }
}
