import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:booking/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';
import 'package:booking/features/maps/domain/repositories/maps_repository.dart';
import 'package:dartz/dartz.dart';

class PlacesSuggestionsUsecase
    implements BaseUsecase<PlacesSuggestions, PlacesSuggestionsParams> {
  final MapsRepository mapsRepository;

  PlacesSuggestionsUsecase({required this.mapsRepository});
  @override
  Future<Either<Failure, PlacesSuggestions>> call(
      PlacesSuggestionsParams params) {
    return mapsRepository.getPlacesSuggestions(params);
  }
}
