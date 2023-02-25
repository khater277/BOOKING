import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';

class CreateBookingUseCase
    implements BaseUsecase<CreateBookingResponse, CreateBookingBody> {
  final BookingRepository bookingRepository;

  CreateBookingUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, CreateBookingResponse>> call(
      CreateBookingBody params) {
    return bookingRepository.createBooking(createBookingBody: params);
  }
}
