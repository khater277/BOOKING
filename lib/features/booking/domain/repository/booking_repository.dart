import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:dartz/dartz.dart';

abstract class BookingRepository {
  Future<Either<Failure, List<BookingDetailsModel>>> getMyBookings();
}
