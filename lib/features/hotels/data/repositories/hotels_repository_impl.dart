import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:booking/features/hotels/data/models/facilities_body_model/facilities_body_model/facilities_body_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilites_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HotelsRepositoryImpl implements HotelsRepository {
  final HotelsRemoteDataSource hotelsRemoteDataSource;

  HotelsRepositoryImpl({required this.hotelsRemoteDataSource});
  @override
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsBodyModel hotelsBodyModel,
  }) async {
    try {
      final response = await hotelsRemoteDataSource.getHotels(
          hotelsBodyModel: hotelsBodyModel);
      await HiveHelper.setAllHotels(hotelsResponseModel: response);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, FacilitiesResponseModel>> getFacilities(
      {required FacilitiesBodyModel facilitiesBodyModel}) async {
    try {
      final response = await hotelsRemoteDataSource.getFacilities(
          facilitiesBodyModel: facilitiesBodyModel);
      await HiveHelper.setAllFacilities(facilitiesResponseModel: response);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
