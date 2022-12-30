import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUseCase implements BaseUsecase<UserCredential, AuthBody> {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});
  @override
  Future<Either<Failure, UserCredential>> call(AuthBody params) {
    return authRepository.loginUser(authBody: params);
  }
}
