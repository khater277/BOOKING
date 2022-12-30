import 'package:booking/config/navigation.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/shared_widgets/circle_indicator.dart';
import 'package:booking/core/shared_widgets/snack_bar.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_fonts.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/cubit/login/login_state.dart';
import 'package:booking/features/auth/presentation/widgets/accept_terms_text.dart';
import 'package:booking/features/auth/presentation/widgets/already_have_account.dart';
import 'package:booking/features/auth/presentation/widgets/auth_head.dart';
import 'package:booking/features/auth/presentation/widgets/google_facebook_sign_in.dart';
import 'package:booking/features/auth/presentation/widgets/login_text_fields/login_text_fields.dart';
import 'package:booking/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit loginCubit;
  @override
  void initState() {
    loginCubit = LoginCubit.get(context);
    loginCubit.initControllers();
    super.initState();
  }

  @override
  void dispose() {
    loginCubit.emailController!.dispose();
    loginCubit.passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) async {
        if (state is UserLoginError) {
          showSnackBar(
            context: context,
            message: state.message,
            color: AppColors.red,
          );
        } else if (state is UserLoginSuccess) {
          Go.offAll(context: context, screen: const HomeScreen());

          // await HiveHelper.setCurrentUser(user: state.currentUser);
          // print(HiveHelper.getCurrentUser()!.userCredential.user!.email);
        }

        // if (state is UserLoginSuccess) {
        //   if (state.authResponse.status!.type == "0") {
        // showSnackBar(
        //   context: context,
        //   message: state.authResponse.status!.title!.en!,
        //   color: AppColors.red,
        // );
        //   } else {
        //     Go.offAll(
        //       context: context,
        //       screen: const HotelsScreen(),
        //     );
        //     HiveHelper.setCurrentUser(authData: state.authResponse.authData!);
        //   }
        // }
      },
      builder: (context, state) {
        final LoginCubit cubit = LoginCubit.get(context);
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(AppSize.s20).add(
                  EdgeInsets.only(top: AppHeight.h60),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AuthHead(title: AppStrings.login),
                    SizedBox(height: AppHeight.h30),
                    const GoogleFacebookSignIn(),
                    SizedBox(height: AppHeight.h20),
                    const SecondaryText(
                      text: AppStrings.logWithEmail,
                      isLight: true,
                    ),
                    SizedBox(height: AppHeight.h30),
                    // const LoginTextFields(),
                    LoginTextFields(cubit: cubit),
                    SizedBox(height: AppHeight.h20),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: SecondaryText(
                        text: AppStrings.forgotPassword,
                        isLight: true,
                        size: FontSize.s12,
                        // isButton: true,
                      ),
                    ),
                    SizedBox(height: AppHeight.h10),
                    if (state is UserLoginLoading)
                      const CustomCircleIndicator()
                    else
                      CustomButton(
                        fillColor: AppColors.teal,
                        text: AppStrings.login,
                        onPressed: () {
                          bool emailValidation =
                              cubit.emailFormKey!.currentState!.validate();
                          bool passwordValidation =
                              cubit.passwordFormKey!.currentState!.validate();
                          if (emailValidation && passwordValidation) {
                            cubit.userLogin();
                          }
                        },
                      ),
                    SizedBox(height: AppHeight.h20),
                    const AcceptTermsText(),
                    const AlreadyHaveAnAccount()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
