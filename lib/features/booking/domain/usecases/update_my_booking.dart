import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateMyBookingUseCase
    implements BaseUsecase<void, UpdateMyBookingParams> {
  final BookingRepository bookingRepository;

  UpdateMyBookingUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, void>> call(UpdateMyBookingParams params) {
    return bookingRepository.updateMyBooking(params: params);
  }
}

class UpdateMyBookingParams {
  final String bookingId;
  final String bookingType;

  UpdateMyBookingParams({required this.bookingId, required this.bookingType});
}
