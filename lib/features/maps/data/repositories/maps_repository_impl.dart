import 'package:booking/features/maps/data/datasources/maps_remote_data_source.dart';
import 'package:booking/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/maps/domain/repositories/maps_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class MapsRepositoryImpl implements MapsRepository {
  final MapsRemoteDataSource mapsRemoteDataSource;

  MapsRepositoryImpl({required this.mapsRemoteDataSource});
  @override
  Future<Either<Failure, PlacesSuggestions>> getPlacesSuggestions(
      placesSuggestionsParams) async {
    try {
      final response = await mapsRemoteDataSource.getPlacesSuggestions(
          placesSuggestionsParams: placesSuggestionsParams);
      return Right(response);
    } on DioError catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
