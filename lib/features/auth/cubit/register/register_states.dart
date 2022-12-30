import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class InitRegisterControllers extends RegisterState {}

class ChangePasswordVisibilityLoading extends RegisterState {}

class ChangePasswordVisibility extends RegisterState {}

class ChangePasswordConfIconVisibilityLoading extends RegisterState {}

class ChangePasswordConfIconVisibility extends RegisterState {}

class RegisterCreateUserLoading extends RegisterState {}

class RegisterCreateUserSuccess extends RegisterState {
  final UserCredential user;

  const RegisterCreateUserSuccess({required this.user});
}

class RegisterCreateUserError extends RegisterState {
  final String message;

  const RegisterCreateUserError({required this.message});
}
