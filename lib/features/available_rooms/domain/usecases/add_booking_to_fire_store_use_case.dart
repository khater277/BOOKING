import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:dartz/dartz.dart';

class AddBookingToFireStoreParams {
  final String bookingId;
  final String userId;
  final BookingDetailsModel bookingDetails;

  AddBookingToFireStoreParams(
      {required this.bookingId,
      required this.userId,
      required this.bookingDetails});
}

class AddBookingToFirestoreUseCase
    implements BaseUsecase<void, AddBookingToFireStoreParams> {
  final AvailableRoomsRepository availableRoomsRepository;

  AddBookingToFirestoreUseCase({required this.availableRoomsRepository});
  @override
  Future<Either<Failure, void>> call(AddBookingToFireStoreParams params) {
    return availableRoomsRepository.addBookingToFirestore(
      bookingId: params.bookingId,
      userId: params.userId,
      bookingDetails: params.bookingDetails,
    );
  }
}
