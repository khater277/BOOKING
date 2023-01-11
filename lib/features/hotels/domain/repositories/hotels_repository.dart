import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/hotels/data/models/facilities_body_model/facilities_body_model/facilities_body_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class HotelsRepository {
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsBodyModel hotelsBodyModel,
  });

  Future<Either<Failure, FacilitiesResponseModel>> getFacilities({
    required FacilitiesBodyModel facilitiesBodyModel,
  });
}
