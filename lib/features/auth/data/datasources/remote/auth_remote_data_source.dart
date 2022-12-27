import 'package:booking/core/api/dio_helper/dio_helper.dart';
import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:booking/features/auth/data/models/login/body/login_body_model.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseModel> registerUser(
      {required RegisterBodyModel registerBody});
  Future<AuthResponseModel> loginUser({required LoginBodyModel loginBody});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioHelper dioHelper;

  AuthRemoteDataSourceImpl({required this.dioHelper});

  /// REGISTER
  @override
  Future<AuthResponseModel> registerUser(
      {required RegisterBodyModel registerBody}) {
    return dioHelper.register(registerBodyModel: registerBody);
  }

  /// LOGIN
  @override
  Future<AuthResponseModel> loginUser({required LoginBodyModel loginBody}) {
    return dioHelper.login(loginBodyModel: loginBody);
  }
}
