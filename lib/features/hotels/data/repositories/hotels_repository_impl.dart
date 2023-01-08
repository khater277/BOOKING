import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/hotels/data/datasources/remote/hotels_remote_data_source.dart';
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
}
