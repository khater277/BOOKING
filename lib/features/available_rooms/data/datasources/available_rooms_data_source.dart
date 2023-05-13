import 'package:booking/core/apis/booking/booking_api.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';

abstract class AvailableRoomsRemoteDataSource {
  Future<CheckRateResponse> checkRate({
    required CheckRateBody checkRateBody,
  });
  Future<CreateBookingResponse> createBooking({
    required CreateBookingBody createBookingBody,
  });
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  });
}

class AvailableRoomsRemoteDataSourceImpl
    implements AvailableRoomsRemoteDataSource {
  final BookingApi bookingApi;
  final FirebaseHelper firebaseHelper;

  AvailableRoomsRemoteDataSourceImpl({
    required this.bookingApi,
    required this.firebaseHelper,
  });

  @override
  Future<CheckRateResponse> checkRate({required CheckRateBody checkRateBody}) {
    return bookingApi.checkRate(
      checkRateBody: checkRateBody,
      signature: AppFunctions.generateSHA256(),
    );
  }

  @override
  Future<CreateBookingResponse> createBooking(
      {required CreateBookingBody createBookingBody}) {
    return bookingApi.createBooking(
      createBookingBody: createBookingBody,
      signature: AppFunctions.generateSHA256(),
    );
  }

  @override
  Future<void> addBookingToFirestore(
      {required String bookingId,
      required String userId,
      required BookingDetailsModel bookingDetails}) {
    return firebaseHelper.addBookingToFirestore(
      bookingId: bookingId,
      userId: userId,
      bookingDetails: bookingDetails,
    );
  }
}
