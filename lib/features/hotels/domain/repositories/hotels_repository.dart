import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class HotelsRepository {
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsBodyModel hotelsBodyModel,
  });
}
