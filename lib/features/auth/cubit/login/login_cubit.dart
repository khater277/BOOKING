import 'package:booking/features/auth/cubit/login/login_state.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/auth/domain/usecases/login_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  bool passwordObscure = true;
  void changePasswordVisibility() {
    emit(ChangePasswordVisibilityLoading());
    passwordObscure = !passwordObscure;
    if (passwordObscure) {
      passwordIcon = Icons.visibility_outlined;
    } else {
      passwordIcon = Icons.visibility_off_outlined;
    }
    debugPrint(passwordObscure.toString());
    emit(ChangePasswordVisibility());
  }

  void userLogin() async {
    emit(UserLoginLoading());
    AuthBody loginBody = AuthBody(
      email: emailController!.text,
      password: passwordController!.text,
    );
    final response = await loginUseCase.call(loginBody);
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(UserLoginError(message: failure.getMessage()));
      },
      (userCredential) {
        debugPrint("DONE =====> ");

        // CurrentUser x = CurrentUser(
        //   uid: userCredential.user!.uid,
        //   token: userCredential.credential!.accessToken,
        //   name: ,
        //   email: ,
        //   image: ,
        // );
        emit(UserLoginSuccess());
      },
    );
  }
}
