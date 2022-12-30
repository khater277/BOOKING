import 'package:booking/features/auth/cubit/register/register_states.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/domain/usecases/register_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;
  RegisterCubit({required this.registerUseCase}) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of<RegisterCubit>(context);

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
    emit(ChangePasswordVisibility());
  }

  bool passwordConfIconVisibility = false;
  void changePasswordConfIconVisibility() {
    emit(ChangePasswordConfIconVisibilityLoading());
    if (passwordConfirmationController!.text.isNotEmpty) {
      passwordConfIconVisibility = true;
    } else {
      passwordConfIconVisibility = false;
    }
    emit(ChangePasswordConfIconVisibility());
  }

  /// register controllers
  GlobalKey<FormState>? nameFormKey;
  GlobalKey<FormState>? emailFormKey;
  GlobalKey<FormState>? passwordFormKey;
  GlobalKey<FormState>? passwordConfirmationFormKey;
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? passwordConfirmationController;

  void initControllers() {
    nameFormKey = GlobalKey<FormState>();
    emailFormKey = GlobalKey<FormState>();
    passwordFormKey = GlobalKey<FormState>();
    passwordConfirmationFormKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    emit(InitRegisterControllers());
  }

  void registerUser({required AuthBody authBody}) async {
    emit(RegisterCreateUserLoading());
    final response = await registerUseCase.call(authBody);
    response.fold(
      (failure) => emit(RegisterCreateUserError(message: failure.getMessage())),
      (user) {
        nameController!.clear();
        emailController!.clear();
        passwordController!.clear();
        passwordConfirmationController!.clear();
        emit(RegisterCreateUserSuccess(user: user));
      },
    );
  }
}
