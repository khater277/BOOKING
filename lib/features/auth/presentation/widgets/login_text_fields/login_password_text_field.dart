import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.passwordFormKey,
      child: TextFieldWithTitle(
        controller: cubit.passwordController!,
        formKey: cubit.passwordFormKey,
        title: AppStrings.password,
        obscure: cubit.passwordObscure,
        suffixIcon: cubit.passwordIcon,
        suffixTap: () => cubit.changePasswordVisibility(),
        hint: AppStrings.passwordHint,
        inputType: TextInputType.text,
        validator: (value) {
          List<bool> conditions = [value!.isEmpty];
          List<String> messages = ["can't be empty"];
          return AppFunctions.handleTextFieldValidator(
            conditions: conditions,
            messages: messages,
          );
        },
      ),
    );
  }
}
