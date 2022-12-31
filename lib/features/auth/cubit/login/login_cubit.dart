import 'package:booking/features/auth/cubit/login/login_state.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/domain/usecases/facebook_sign_in_use_case.dart';
import 'package:booking/features/auth/domain/usecases/login_use_case.dart';
import 'package:booking/features/auth/domain/usecases/google_sign_in_use_case.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final GoogleSignInUseCase googleSignInUseCase;
  final FacebookSignInUseCase facebookSignInUseCase;
  LoginCubit({
    required this.loginUseCase,
    required this.googleSignInUseCase,
    required this.facebookSignInUseCase,
  }) : super(LoginInitial());

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
        emit(UserLoginSuccess());
      },
    );
  }

  void signInWithGoogle() async {
    emit(UserLoginLoading());
    final response = await googleSignInUseCase(NoParams());
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(UserLoginError(message: failure.getMessage()));
      },
      (userCredential) {
        debugPrint("DONE =====> ");
        emit(UserLoginSuccess());
      },
    );
  }

  void signInWithFacebook() async {
    emit(UserLoginLoading());
    final response = await facebookSignInUseCase(NoParams());
    response.fold(
      (failure) {
        debugPrint("ERROR ==> ${failure.getMessage()} ");
        emit(UserLoginError(message: failure.getMessage()));
      },
      (userCredential) {
        debugPrint("DONE =====> ");
        emit(UserLoginSuccess());
      },
    );
  }
}
