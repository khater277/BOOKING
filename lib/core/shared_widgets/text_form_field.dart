import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class Test {
  final String name;

  Test(this.name);
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int? maxlength;
  final String? validatorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? suffixTap;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onFeildSubmitted;
  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.maxlength,
    this.obscureText = false,
    required this.validatorText,
    required this.controller,
    this.onChange,
    this.onFeildSubmitted,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixTap,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      maxLength: maxlength,
      style: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onFeildSubmitted,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: AppColors.teal,
                  size: AppSize.s20,
                )
              : null,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: suffixTap,
                  icon: Icon(
                    suffixIcon,
                    color: AppColors.teal,
                    size: AppSize.s20,
                  ),
                )
              : null),
    );
  }
}
