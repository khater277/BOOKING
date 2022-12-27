import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/register_text_fields/register_email_text_field.dart';
import 'package:booking/features/auth/presentation/widgets/register_text_fields/register_name_text_field.dart';
import 'package:booking/features/auth/presentation/widgets/register_text_fields/register_password_confirmation.dart';
import 'package:booking/features/auth/presentation/widgets/register_text_fields/register_password_text_field.dart';
import 'package:flutter/material.dart';

class RegisterTextFields extends StatelessWidget {
  final RegisterCubit cubit;
  const RegisterTextFields({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterNameTextField(cubit: cubit),
        SizedBox(height: AppHeight.h20),
        RegisterEmailTextField(cubit: cubit),
        SizedBox(height: AppHeight.h20),
        RegisterPasswordTextField(cubit: cubit),
        SizedBox(height: AppHeight.h20),
        RegisterPasswordConfirmationTextField(cubit: cubit),
      ],
    );
  }
}
