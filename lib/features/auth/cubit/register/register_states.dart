import 'package:booking/features/auth/data/models/auth_response_model.dart';
import 'package:equatable/equatable.dart';

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
  final AuthResponseModel authResponse;

  const RegisterCreateUserSuccess({required this.authResponse});
}

class RegisterCreateUserError extends RegisterState {}
