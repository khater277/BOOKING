import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:booking/features/auth/data/models/login/body/login_body_model.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseModel>> registerUser(
      {required RegisterBodyModel registerBody});

  Future<Either<Failure, AuthResponseModel>> loginUser(
      {required LoginBodyModel loginBody});
}
