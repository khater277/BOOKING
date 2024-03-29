import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:dartz/dartz.dart';

class CreateBookingUseCase
    implements BaseUsecase<CreateBookingResponse, CreateBookingBody> {
  final AvailableRoomsRepository availableRoomsRepository;

  CreateBookingUseCase({required this.availableRoomsRepository});
  @override
  Future<Either<Failure, CreateBookingResponse>> call(
      CreateBookingBody params) {
    return availableRoomsRepository.createBooking(createBookingBody: params);
  }
}
