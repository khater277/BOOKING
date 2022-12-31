import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FacebookSignInUseCase implements BaseUsecase<UserCredential?, NoParams> {
  final AuthRepository authRepository;

  FacebookSignInUseCase({required this.authRepository});
  @override
  Future<Either<Failure, UserCredential?>> call(NoParams params) {
    return authRepository.signInWithFacebook();
  }
}
