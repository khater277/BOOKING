import 'package:booking/features/booking/data/datasources/booking_remote_data_source.dart';
import 'package:booking/features/booking/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_availability/response/check_availability_response.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource bookingRemoteDataSource;

  BookingRepositoryImpl({required this.bookingRemoteDataSource});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) async {
    try {
      final response = await bookingRemoteDataSource.checkAvailability(
          checkAvailabilityBody: checkAvailabilityBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, CheckRateResponse>> checkRate(
      {required CheckRateBody checkRateBody}) async {
    try {
      final response =
          await bookingRemoteDataSource.checkRate(checkRateBody: checkRateBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, CreateBookingResponse>> createBooking(
      {required CreateBookingBody createBookingBody}) async {
    try {
      final response = await bookingRemoteDataSource.createBooking(
          createBookingBody: createBookingBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
