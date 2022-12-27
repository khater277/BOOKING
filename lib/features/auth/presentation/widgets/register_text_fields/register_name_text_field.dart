import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/presentation/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';

class RegisterNameTextField extends StatelessWidget {
  const RegisterNameTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final RegisterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.nameFormKey,
      child: TextFieldWithTitle(
        controller: cubit.nameController!,
        formKey: cubit.nameFormKey,
        title: AppStrings.name,
        hint: AppStrings.nameHint,
        inputType: TextInputType.text,
        validator: (value) {
          List<bool> conditions = [
            value!.isEmpty,
            value.length < 6,
          ];
          List<String> messages = [
            "can't be empty",
            "name have to be more than 5 characters",
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
