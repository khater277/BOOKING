import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetHotelsUseCase
    implements BaseUsecase<HotelsResponseModel, HotelsBodyModel> {
  final HotelsRepository hotelsRepository;

  GetHotelsUseCase({required this.hotelsRepository});
  @override
  Future<Either<Failure, HotelsResponseModel>> call(
      HotelsBodyModel hotelsBodyModel) {
    return hotelsRepository.getHotels(hotelsBodyModel: hotelsBodyModel);
  }
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
