import 'package:booking/core/errors/failures.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

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
      debugPrint("WELCOME ${user.name}");
      return Right(response);
    } on FirebaseAuthException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, UserCredential?>> signInWithGoogle() async {
    try {
      final response = await authRemoteDataSource.signInWithGoogle();
      if (response != null) {
        try {
          final user = await authRemoteDataSource.getCurrentUser(
              uid: response.user!.uid);
          HiveHelper.setCurrentUser(user: user);
          debugPrint("USER ALREADY EXIST");
        } catch (error) {
          final user = CurrentUser(
            uid: response.user!.uid,
            token: await response.user!.getIdToken(),
            name: response.user!.displayName,
            email: response.user!.email,
            image: response.user!.photoURL,
          );
          await authRemoteDataSource.addUserToFirestore(user: user);
          HiveHelper.setCurrentUser(user: user);
          debugPrint("USER DOESN'T EXIST");
        }
        return Right(response);
      } else {
        FirebaseAuthException exception =
            FirebaseAuthException(code: 'request-cancelled');
        return Left(ServerFailure(error: exception));
      }
    } on FirebaseAuthException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }

  @override
  Future<Either<Failure, UserCredential?>> signInWithFacebook() async {
    try {
      final response = await authRemoteDataSource.signInWithFacebook();
      if (response != null) {
        try {
          final user = await authRemoteDataSource.getCurrentUser(
              uid: response.user!.uid);
          HiveHelper.setCurrentUser(user: user);
          debugPrint("USER ALREADY EXIST");
        } catch (error) {
          final user = CurrentUser(
            uid: response.user!.uid,
            token: await response.user!.getIdToken(),
            name: response.user!.displayName,
            email: response.user!.email,
            image: response.user!.photoURL,
          );
          await authRemoteDataSource.addUserToFirestore(user: user);
          HiveHelper.setCurrentUser(user: user);
          debugPrint("USER DOESN'T EXIST");
        }
        return Right(response);
      } else {
        FirebaseAuthException exception =
            FirebaseAuthException(code: 'request-cancelled');
        return Left(ServerFailure(error: exception));
      }
    } on FirebaseAuthException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
