import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/login_text_fields/login_email_text_field.dart';
import 'package:booking/features/auth/presentation/widgets/login_text_fields/login_password_text_field.dart';
import 'package:flutter/material.dart';

class LoginTextFields extends StatelessWidget {
  final LoginCubit cubit;
  const LoginTextFields({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginEmailTextField(cubit: cubit),
        SizedBox(height: AppHeight.h20),
        LoginPasswordTextField(cubit: cubit),
      ],
    );
  }
}
