import 'package:booking/core/errors/failures.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> registerUser(
      {required AuthBody authBody});

  Future<Either<Failure, UserCredential>> loginUser(
      {required AuthBody authBody});

  Future<Either<Failure, UserCredential?>> signInWithGoogle();
  Future<Either<Failure, UserCredential?>> signInWithFacebook();
}
