import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:dartz/dartz.dart';

class GetFacilitiesUseCase
    implements BaseUsecase<FacilitiesResponseModel, FacilitiesParamsModel> {
  final HotelsRepository hotelsRepository;

  GetFacilitiesUseCase({required this.hotelsRepository});
  @override
  Future<Either<Failure, FacilitiesResponseModel>> call(
      FacilitiesParamsModel params) {
    return hotelsRepository.getFacilities(facilitiesParamsModel: params);
  }
}
