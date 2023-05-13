import 'package:booking/core/errors/api/network_exceptions.dart';
import 'package:booking/core/errors/firebase/auth_exceptions.dart';
import 'package:booking/core/errors/firebase/firestore_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as db;
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure extends Equatable {
  String getMessage();
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final Exception error;

  ServerFailure({required this.error});

  String handleException(e) {
    String result;
    switch (e.runtimeType) {
      case DioError:
        result = NetworkExceptions.getErrorMessage(
            NetworkExceptions.getDioException(error));
        break;
      case FirebaseAuthException:
        result = AuthExceptionHandler.generateExceptionMessage(
            AuthExceptionHandler.handleException(error));
        break;
      case db.FirebaseException:
        result = FirestoreExceptionHandler.generateExceptionMessage(
            FirestoreExceptionHandler.handleException(error));
        break;
      default:
        result = e.runtimeType.toString();
    }
    return result;
  }

  @override
  String getMessage() => handleException(error);
  // "error is  NetworkExceptions.getErrorMessage(error)";
}

class CacheFailure extends Failure {
  @override
  String getMessage() => "CACHE FAILURE";
}
