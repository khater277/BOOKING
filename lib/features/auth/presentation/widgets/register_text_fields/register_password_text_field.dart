import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final RegisterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.passwordFormKey,
      child: TextFieldWithTitle(
        controller: cubit.passwordController!,
        formKey: cubit.passwordFormKey,
        title: AppStrings.password,
        hint: AppStrings.passwordHint,
        inputType: TextInputType.text,
        obscure: cubit.passwordObsecure,
        suffixIcon: cubit.passwordIcon,
        suffixTap: () => cubit.changePasswordVisibility(),
        validator: (value) {
          List<bool> conditions = [
            value!.isEmpty,
            value.length < 6,
          ];
          List<String> messages = [
            "can't be empty",
            "password must be more than 6",
          ];
          return AppFunctions.handleTextFieldValidator(
            conditions: conditions,
            messages: messages,
          );
        },
      ),
    );
  }
}
