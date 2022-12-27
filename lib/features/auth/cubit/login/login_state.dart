import 'package:booking/features/auth/data/models/auth_response_model.dart';
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
  final AuthResponseModel authResponse;

  const UserLoginSuccess({required this.authResponse});
}

class UserLoginError extends LoginState {}
