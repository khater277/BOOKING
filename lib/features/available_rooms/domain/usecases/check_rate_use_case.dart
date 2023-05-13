import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:dartz/dartz.dart';

class CheckRateUseCase
    implements BaseUsecase<CheckRateResponse, CheckRateBody> {
  final AvailableRoomsRepository availableRoomsRepository;

  CheckRateUseCase({required this.availableRoomsRepository});
  @override
  Future<Either<Failure, CheckRateResponse>> call(CheckRateBody params) {
    return availableRoomsRepository.checkRate(checkRateBody: params);
  }
}
