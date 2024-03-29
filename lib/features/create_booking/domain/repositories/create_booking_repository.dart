import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:dartz/dartz.dart';

abstract class CreateBookingRepository {
  Future<Either<Failure, CheckAvailabilityResponse>> checkAvailability({
    required CheckAvailabilityBody checkAvailabilityBody,
  });
}
