import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleFacebookSignIn extends StatelessWidget {
  const GoogleFacebookSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            fillColor: Colors.indigo,
            text: AppStrings.facebook,
            icon: FontAwesomeIcons.facebook,
            onPressed: () {
              // AuthCubit.get(context)
            },
          ),
        ),
        SizedBox(width: AppWidth.w10),
        Expanded(
          child: CustomButton(
            fillColor: Colors.red[800],
            text: AppStrings.google,
            icon: FontAwesomeIcons.google,
            onPressed: () {
              // AuthCubit.get(context).changeRegisterPasswordVisibility();
            },
          ),
        ),
      ],
    );
  }
}
