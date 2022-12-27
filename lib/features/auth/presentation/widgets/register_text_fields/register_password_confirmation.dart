import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class RegisterPasswordConfirmationTextField extends StatelessWidget {
  const RegisterPasswordConfirmationTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final RegisterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.passwordConfirmationFormKey,
      child: TextFieldWithTitle(
        controller: cubit.passwordConfirmationController!,
        formKey: cubit.passwordConfirmationFormKey,
        title: AppStrings.passwordConfirmation,
        hint: AppStrings.passwordConfirmationHint,
        inputType: TextInputType.text,
        obscure: cubit.passwordObsecure,
        suffixIcon:
            cubit.passwordConfIconVisibility ? cubit.passwordIcon : null,
        onChange: (value) {
          cubit.passwordConfirmationFormKey!.currentState!.validate();
          cubit.changePasswordConfIconVisibility();
        },
        validator: (value) {
          List<bool> conditions = [
            value!.isEmpty,
            value != cubit.passwordController!.text,
          ];
          List<String> messages = [
            "can't be empty",
            "not matching with password",
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
