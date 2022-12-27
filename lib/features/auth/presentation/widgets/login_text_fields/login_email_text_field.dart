import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.emailFormKey,
      child: TextFieldWithTitle(
        controller: cubit.emailController!,
        formKey: cubit.emailFormKey,
        title: AppStrings.email,
        hint: AppStrings.emailHint,
        inputType: TextInputType.emailAddress,
        validator: (value) {
          List<bool> conditions = [
            value!.isEmpty,
            !EmailValidator.validate(value),
          ];
          List<String> messages = [
            "can't be empty",
            "invalid email address",
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
