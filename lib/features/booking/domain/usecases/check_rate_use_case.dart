import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:dartz/dartz.dart';

class CheckRateUseCase
    implements BaseUsecase<CheckRateResponse, CheckRateBody> {
  final BookingRepository bookingRepository;

  CheckRateUseCase({required this.bookingRepository});
  @override
  Future<Either<Failure, CheckRateResponse>> call(CheckRateBody params) {
    return bookingRepository.checkRate(checkRateBody: params);
  }
}
