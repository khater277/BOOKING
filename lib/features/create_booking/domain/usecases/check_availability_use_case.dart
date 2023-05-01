import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:booking/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:dartz/dartz.dart';

class CheckAvailabilityUseCase
    implements BaseUsecase<CheckAvailabilityResponse, CheckAvailabilityBody> {
  final CreateBookingRepository createBookingRepository;

  CheckAvailabilityUseCase({required this.createBookingRepository});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> call(
      CheckAvailabilityBody params) {
    return createBookingRepository.checkAvailability(
        checkAvailabilityBody: params);
  }
}
