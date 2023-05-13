import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:dartz/dartz.dart';

class GetMyBookingsUseCase
    implements BaseUsecase<List<BookingDetailsModel>, NoParams> {
  final BookingRepository bookingRepository;

  GetMyBookingsUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, List<BookingDetailsModel>>> call(params) {
    return bookingRepository.getMyBookings();
  }
}
