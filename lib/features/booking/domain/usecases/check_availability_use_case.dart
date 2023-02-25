import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_availability/response/check_availability_response.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';

class CheckAvailabilityUseCase
    implements BaseUsecase<CheckAvailabilityResponse, CheckAvailabilityBody> {
  final BookingRepository bookingRepository;

  CheckAvailabilityUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> call(
      CheckAvailabilityBody params) {
    return bookingRepository.checkAvailability(checkAvailabilityBody: params);
  }
}
