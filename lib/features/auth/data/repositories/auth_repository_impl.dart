import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  /// REGISTER
  @override
  Future<Either<Failure, UserCredential>> registerUser(
      {required AuthBody authBody}) async {
    try {
      final response =
          await authRemoteDataSource.registerUser(authBody: authBody);

      await authRemoteDataSource.addUserToFirestore(
          user: CurrentUser(
        uid: response.user!.uid,
        token: await response.user!.getIdToken(),
        name: authBody.name,
        email: authBody.email,
        image: "",
      ));
      return Right(response);
    } on FirebaseAuthException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  /// LOGIN
  @override
  Future<Either<Failure, UserCredential>> loginUser(
      {required AuthBody authBody}) async {
    try {
      final response = await authRemoteDataSource.loginUser(authBody: authBody);
      final user =
          await authRemoteDataSource.getCurrentUser(uid: response.user!.uid);
      HiveHelper.setCurrentUser(user: user);
      print("WELCOME ${user.name}");
      return Right(response);
    } on FirebaseAuthException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
