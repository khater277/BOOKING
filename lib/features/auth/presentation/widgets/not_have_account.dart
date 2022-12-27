import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryText(
          text: AppStrings.haveNotAnAccount,
          isLight: true,
          center: true,
          size: FontSize.s13,
          isEllipsis: false,
        ),
        TextButton(
          onPressed: () {
            Go.offAll(context: context, screen: const LoginScreen());
          },
          child: const TealText(
            text: AppStrings.login,
          ),
        ),
      ],
    );
  }
}
