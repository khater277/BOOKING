import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/errors/network_exceptions.dart';
import 'package:booking/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:booking/features/auth/data/models/login/body/login_body_model.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  /// REGISTER
  @override
  Future<Either<Failure, AuthResponseModel>> registerUser(
      {required RegisterBodyModel registerBody}) async {
    try {
      final response =
          await authRemoteDataSource.registerUser(registerBody: registerBody);
      return Right(response);
    } on DioError catch (error) {
      NetworkExceptions.getDioException(error);
      return Left(
          ServerFailure(error: NetworkExceptions.getDioException(error)));
    }
  }

  /// LOGIN
  @override
  Future<Either<Failure, AuthResponseModel>> loginUser(
      {required LoginBodyModel loginBody}) async {
    try {
      final response =
          await authRemoteDataSource.loginUser(loginBody: loginBody);
      return Right(response);
    } on DioError catch (error) {
      return Left(
          ServerFailure(error: NetworkExceptions.getDioException(error)));
    }
  }
}
