import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/create_booking/data/datasources/create_biiking_remote_data_source.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:booking/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CreateBookingRepositoryImpl implements CreateBookingRepository {
  final CreateBookingRemoteDataSource createBookingRemoteDataSource;

  CreateBookingRepositoryImpl({required this.createBookingRemoteDataSource});
  @override
  Future<Either<Failure, CheckAvailabilityResponse>> checkAvailability(
      {required CheckAvailabilityBody checkAvailabilityBody}) async {
    try {
      final response = await createBookingRemoteDataSource.checkAvailability(
          checkAvailabilityBody: checkAvailabilityBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
