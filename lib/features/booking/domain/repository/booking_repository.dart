import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';
import 'package:dartz/dartz.dart';

abstract class BookingRepository {
  Future<Either<Failure, List<BookingDetailsModel>>> getMyBookings();
  Future<Either<Failure, void>> updateMyBooking(
      {required UpdateMyBookingParams params});
}
