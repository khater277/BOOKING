import 'package:booking/core/api/dio_helper/dio_helper.dart';
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
  final DioHelper dioHelper;

  BookingRemoteDataSourceImpl({required this.dioHelper});
  @override
  Future<CheckAvailabilityResponse> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) {
    return dioHelper.checkAvailability(
        checkAvailabilityBody: checkAvailabilityBody);
  }

  @override
  Future<CheckRateResponse> checkRate({required CheckRateBody checkRateBody}) {
    return dioHelper.checkRate(checkRateBody: checkRateBody);
  }

  @override
  Future<CreateBookingResponse> createBooking(
      {required CreateBookingBody createBookingBody}) {
    return dioHelper.createBooking(createBookingBody: createBookingBody);
  }
}
