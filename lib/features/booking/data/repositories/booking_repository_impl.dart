import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/features/booking/data/datasources/booking_remote_data_source.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource bookingRemoteDataSource;

  BookingRepositoryImpl({required this.bookingRemoteDataSource});
  @override
  Future<Either<Failure, List<BookingDetailsModel>>> getMyBookings() async {
    try {
      if (await InternetConnectionChecker().hasConnection) {
        final response = await bookingRemoteDataSource.getMyBookings();
        if (response.isNotEmpty) {
          for (var element in response) {
            await HiveHelper.setMyBookings(
              bookingId: element.bookingId!,
              myBooking: element,
            );
          }
        }

        return Right(response);
      } else {
        throw FirebaseException(plugin: '', code: 'no-internet-connection');
      }
    } on FirebaseException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, void>> updateMyBooking(
      {required UpdateMyBookingParams params}) async {
    try {
      if (await InternetConnectionChecker().hasConnection) {
        final response =
            await bookingRemoteDataSource.updateMyBooking(params: params);
        final String type = params.bookingType;
        HiveHelper.setMyBookings(
          bookingId: params.bookingId,
          myBooking: HiveHelper.myBookings!
              .get(params.bookingId)!
              .copyWith(type: type),
        );
        return Right(response);
      } else {
        throw FirebaseException(plugin: '', code: 'no-internet-connection');
      }
    } on FirebaseException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
