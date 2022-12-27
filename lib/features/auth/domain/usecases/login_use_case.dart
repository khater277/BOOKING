import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:booking/features/auth/data/models/login/body/login_body_model.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements BaseUsecase<AuthResponseModel, LoginBodyModel> {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});
  @override
  Future<Either<Failure, AuthResponseModel>> call(LoginBodyModel params) {
    return authRepository.loginUser(loginBody: params);
  }
}
