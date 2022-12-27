import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryText(
          text: AppStrings.haveAnAccount,
          isLight: true,
          center: true,
          size: FontSize.s13,
          isEllipsis: false,
        ),
        TextButton(
          onPressed: () {
            Go.offAll(context: context, screen: const RegisterScreen());
          },
          child: const TealText(
            text: AppStrings.signUp,
          ),
        ),
      ],
    );
  }
}
