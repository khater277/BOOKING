import 'package:booking/features/auth/cubit/login/login_state.dart';
import 'package:booking/features/auth/data/models/login/body/login_body_model.dart';
import 'package:booking/features/auth/domain/usecases/login_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  LoginCubit({required this.loginUseCase}) : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of<LoginCubit>(context);

  /// login controllers
  GlobalKey<FormState>? formKey;
  GlobalKey<FormState>? emailFormKey;
  GlobalKey<FormState>? passwordFormKey;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  void initControllers() {
    formKey = GlobalKey<FormState>();
    emailFormKey = GlobalKey<FormState>();
    passwordFormKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emit(InitLoginControllers());
  }

  IconData passwordIcon = Icons.visibility_outlined;
  bool passwordObsecure = true;
  void changePasswordVisibility() {
    emit(ChangePasswordVisibilityLoading());
    passwordObsecure = !passwordObsecure;
    if (passwordObsecure) {
      passwordIcon = Icons.visibility_outlined;
    } else {
      passwordIcon = Icons.visibility_off_outlined;
    }
    debugPrint(passwordObsecure.toString());
    emit(ChangePasswordVisibility());
  }

  void userLogin() async {
    emit(UserLoginLoading());
    LoginBodyModel loginBody = LoginBodyModel(
      email: emailController!.text,
      password: passwordController!.text,
    );
    final response = await loginUseCase.call(loginBody);
    response.fold(
      (failure) {
        debugPrint("ERROR");
        emit(UserLoginError());
      },
      (authResponseModel) {
        debugPrint("DONE =====> ");
        emit(UserLoginSuccess(authResponse: authResponseModel));
      },
    );
  }
}
