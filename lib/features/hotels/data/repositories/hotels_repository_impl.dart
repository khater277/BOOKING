import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:booking/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HotelsRepositoryImpl implements HotelsRepository {
  final HotelsRemoteDataSource hotelsRemoteDataSource;

  HotelsRepositoryImpl({required this.hotelsRemoteDataSource});
  @override
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsParamsModel hotelsParamsModel,
  }) async {
    try {
      final response = await hotelsRemoteDataSource.getHotels(
          hotelsParamsModel: hotelsParamsModel);
      await HiveHelper.setAllHotels(hotelsResponseModel: response);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, FacilitiesResponseModel>> getFacilities(
      {required FacilitiesParamsModel facilitiesParamsModel}) async {
    try {
      final response = await hotelsRemoteDataSource.getFacilities(
          facilitiesParamsModel: facilitiesParamsModel);
      await HiveHelper.setAllFacilities(facilitiesResponseModel: response);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
