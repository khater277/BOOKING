import 'package:booking/core/apis/booking/booking_api.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_availability/response/check_availability_response.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/response/create_booking_response.dart';

abstract class BookingRemoteDataSource {
  Future<CheckAvailabilityResponse> checkAvailability({
    required CheckAvailabilityBody checkAvailabilityBody,
  });
  Future<CheckRateResponse> checkRate({
    required CheckRateBody checkRateBody,
  });
  Future<CreateBookingResponse> createBooking({
    required CreateBookingBody createBookingBody,
  });
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final BookingApi bookingApi;

  BookingRemoteDataSourceImpl({required this.bookingApi});
  @override
  Future<CheckAvailabilityResponse> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) {
    return bookingApi.checkAvailability(
        checkAvailabilityBody: checkAvailabilityBody);
  }

  @override
  Future<CheckRateResponse> checkRate({required CheckRateBody checkRateBody}) {
    return bookingApi.checkRate(checkRateBody: checkRateBody);
  }

  @override
  Future<CreateBookingResponse> createBooking(
      {required CreateBookingBody createBookingBody}) {
    return bookingApi.createBooking(createBookingBody: createBookingBody);
  }
}
