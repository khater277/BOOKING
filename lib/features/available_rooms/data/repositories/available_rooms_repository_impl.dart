import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/available_rooms/data/datasources/available_rooms_data_source.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AvailableRoomsRepositoryImpl implements AvailableRoomsRepository {
  final AvailableRoomsRemoteDataSource availableRoomsRemoteDataSource;

  AvailableRoomsRepositoryImpl({required this.availableRoomsRemoteDataSource});

  @override
  Future<Either<Failure, CheckRateResponse>> checkRate(
      {required CheckRateBody checkRateBody}) async {
    try {
      final response = await availableRoomsRemoteDataSource.checkRate(
          checkRateBody: checkRateBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, CreateBookingResponse>> createBooking(
      {required CreateBookingBody createBookingBody}) async {
    try {
      final response = await availableRoomsRemoteDataSource.createBooking(
          createBookingBody: createBookingBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, void>> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  }) async {
    try {
      final response =
          await availableRoomsRemoteDataSource.addBookingToFirestore(
        bookingId: bookingId,
        userId: userId,
        bookingDetails: bookingDetails,
      );
      return Right(response);
    } on FirebaseException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
