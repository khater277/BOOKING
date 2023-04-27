import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/maps/data/models/places_suggestions/places_suggestions.dart';
import 'package:booking/features/maps/data/models/places_suggestions_params/places_suggestions_params.dart';
import 'package:dartz/dartz.dart';

abstract class MapsRepository {
  Future<Either<Failure, PlacesSuggestions>> getPlacesSuggestions(
      PlacesSuggestionsParams placesSuggestionsParams);
}
