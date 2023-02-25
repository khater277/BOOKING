import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_availability/response/check_availability_response.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/response/create_booking_response.dart';
import 'package:dartz/dartz.dart';

abstract class BookingRepository {
  Future<Either<Failure, CheckAvailabilityResponse>> checkAvailability({
    required CheckAvailabilityBody checkAvailabilityBody,
  });

  Future<Either<Failure, CheckRateResponse>> checkRate({
    required CheckRateBody checkRateBody,
  });

  Future<Either<Failure, CreateBookingResponse>> createBooking({
    required CreateBookingBody createBookingBody,
  });
}
