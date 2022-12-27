import 'package:booking/features/auth/cubit/register/register_states.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';
import 'package:booking/features/auth/domain/usecases/register_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;
  RegisterCubit({required this.registerUseCase}) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of<RegisterCubit>(context);

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

  void registerUser({required RegisterBodyModel registerBody}) async {
    emit(RegisterCreateUserLoading());
    final response = await registerUseCase.call(registerBody);
    response.fold(
      (failure) => emit(RegisterCreateUserError()),
      (authResponse) {
        debugPrint("================> ${authResponse.status!.title!.en}");
        emit(RegisterCreateUserSuccess(authResponse: authResponse));
      },
    );
  }
}
