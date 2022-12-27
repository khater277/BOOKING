import 'package:booking/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
