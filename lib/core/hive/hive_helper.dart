import 'package:booking/core/hive/keys.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/description.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/address.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/city.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/description.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/image.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/name.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/phone.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/rooms/room.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/rooms/room_facility.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/rooms/room_stay.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/rooms/room_stay_facility.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/rooms/rooms.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static Box<CurrentUser>? currentUser;
  static Box<HotelsResponseModel>? allHotelsData;
  static Box<Coordinates>? userLocation;
  static Box<FacilitiesResponseModel>? facilities;
  static Box<BookingDetailsModel>? myBookings;

  static Future<void> init() async {
    await Hive.initFlutter();

    /// Adapters
    Hive.registerAdapter(CurrentUserAdapter());
    Hive.registerAdapter(HotelsResponseModelAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(CityAdapter());
    Hive.registerAdapter(CoordinatesAdapter());
    Hive.registerAdapter(DescriptionAdapter());
    Hive.registerAdapter(FacilityAdapter());
    Hive.registerAdapter(HotelAdapter());
    Hive.registerAdapter(ImageAdapter());
    Hive.registerAdapter(NameAdapter());
    Hive.registerAdapter(PhoneAdapter());
    Hive.registerAdapter(FacilitiesResponseModelAdapter());
    Hive.registerAdapter(FacilityInfoAdapter());
    Hive.registerAdapter(FacilityDescriptionAdapter());
    Hive.registerAdapter(RoomFacilityAdapter());
    Hive.registerAdapter(RoomStayFacilityAdapter());
    Hive.registerAdapter(RoomStayAdapter());
    Hive.registerAdapter(RoomAdapter());
    Hive.registerAdapter(RoomsAdapter());
    Hive.registerAdapter(BookingDetailsModelAdapter());

    /// Open Boxes
    currentUser = await Hive.openBox(HiveKeys.currentUser);
    allHotelsData = await Hive.openBox(HiveKeys.allHotelsData);
    userLocation = await Hive.openBox(HiveKeys.userLocation);
    facilities = await Hive.openBox(HiveKeys.facilities);
    myBookings = await Hive.openBox(HiveKeys.myBookings);
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

  // USER LOCATION
  static Future<void> setUserLocation({required Coordinates userCoordinates}) {
    return userLocation!.put(HiveKeys.userLocation, userCoordinates);
  }

  static Coordinates? getUserLocation() {
    return userLocation!.get(HiveKeys.userLocation);
  }

  // FACILITIES
  static Future<void> setAllFacilities(
      {required FacilitiesResponseModel facilitiesResponseModel}) {
    return facilities!.put(HiveKeys.facilities, facilitiesResponseModel);
  }

  static FacilitiesResponseModel? getAllFacilities() {
    return facilities!.get(HiveKeys.facilities);
  }

  //MY BOOKINGS
  static Future<void> setMyBookings(
      {required String bookingId, required BookingDetailsModel myBooking}) {
    return myBookings!.put(bookingId, myBooking);
  }

  static List<BookingDetailsModel>? getMyBookings() {
    if (myBookings!.values.isNotEmpty) {
      List<BookingDetailsModel> list = [];
      for (var element in myBookings!.values) {
        list.add(myBookings!.get(element.bookingId)!);
      }
      return list;
    } else {
      return null;
    }
  }
}
