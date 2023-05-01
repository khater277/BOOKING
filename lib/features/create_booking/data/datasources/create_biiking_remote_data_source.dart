import 'package:booking/core/apis/booking/booking_api.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/check_availability_response.dart';

abstract class CreateBookingRemoteDataSource {
  Future<CheckAvailabilityResponse> checkAvailability({
    required CheckAvailabilityBody checkAvailabilityBody,
  });
}

class CreateBookingRemoteDataSourceImpl
    implements CreateBookingRemoteDataSource {
  final BookingApi bookingApi;

  CreateBookingRemoteDataSourceImpl({required this.bookingApi});
  @override
  Future<CheckAvailabilityResponse> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) {
    return bookingApi.checkAvailability(
        checkAvailabilityBody: checkAvailabilityBody);
  }
}
