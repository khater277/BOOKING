import 'package:booking/core/errors/network_exceptions.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String getMessage();
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final NetworkExceptions error;

  ServerFailure({required this.error});

  @override
  String getMessage() => NetworkExceptions.getErrorMessage(error);
  // NetworkExceptions.getErrorMessage(
  //     NetworkExceptions.getDioException(error));
}

class CacheFailure extends Failure {
  @override
  String getMessage() => "CACHE FAILURE";
}
