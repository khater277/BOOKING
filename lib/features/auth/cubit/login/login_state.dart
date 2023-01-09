import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class InitLoginControllers extends LoginState {}

class ChangePasswordVisibilityLoading extends LoginState {}

class ChangePasswordVisibility extends LoginState {}

class UserLoginLoading extends LoginState {}

class UserLoginSuccess extends LoginState {
  // final CurrentUser currentUser;

  // const UserLoginSuccess({required this.currentUser});
}

class UserLoginError extends LoginState {
  final String message;

  const UserLoginError({required this.message});
}
