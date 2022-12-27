import 'package:booking/core/base_usecase/base_usecase.dart';
import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase
    implements BaseUsecase<AuthResponseModel, RegisterBodyModel> {
  final AuthRepository authRepository;

  RegisterUseCase({required this.authRepository});
  @override
  Future<Either<Failure, AuthResponseModel>> call(registerBody) {
    return authRepository.registerUser(registerBody: registerBody);
  }
}
