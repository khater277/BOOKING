import 'package:booking/core/hive/keys.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/address.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/city.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/image.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static Box<CurrentUser>? currentUser;
  static Box<HotelsResponseModel>? allHotelsData;

  static Future<void> init() async {
    await Hive.initFlutter();

    /// Adapters
    Hive.registerAdapter(CurrentUserAdapter());
    Hive.registerAdapter(HotelsResponseModelAdapter());
    Hive.registerAdapter(HotelAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(CityAdapter());
    Hive.registerAdapter(CoordinatesAdapter());
    Hive.registerAdapter(FacilityAdapter());
    Hive.registerAdapter(ImageAdapter());
    Hive.registerAdapter(PhoneAdapter());

    /// Open Boxes
    currentUser = await Hive.openBox(HiveKeys.currentUser);
    allHotelsData = await Hive.openBox(HiveKeys.allHotelsData);
  }

  // USER
  static Future<void> setCurrentUser({required CurrentUser user}) {
    return currentUser!.put(HiveKeys.currentUser, user);
  }

  static CurrentUser? getCurrentUser() {
    return currentUser!.get(HiveKeys.currentUser);
  }

  // ALL HOTELS
  static Future<void> setAllHotels(
      {required HotelsResponseModel hotelsResponseModel}) {
    return allHotelsData!.put(HiveKeys.allHotelsData, hotelsResponseModel);
  }

  static HotelsResponseModel? getAllHotels() {
    return allHotelsData!.get(HiveKeys.allHotelsData);
  }

  static List<Hotel>? getSomeHotels({
    required int from,
    required int to,
  }) {
    return getAllHotels()!.hotels!.sublist(from, to);
  }
}
