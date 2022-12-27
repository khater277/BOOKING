import 'package:booking/config/navigation.dart';
import 'package:booking/core/shared_widgets/button.dart';
import 'package:booking/core/shared_widgets/circle_indicator.dart';
import 'package:booking/core/shared_widgets/snack_bar.dart';
import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/core/utils/app_colors.dart';
import 'package:booking/core/utils/app_strings.dart';
import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/cubit/register/register_states.dart';
import 'package:booking/features/auth/data/models/register/register_body/register_body_model.dart';
import 'package:booking/features/auth/presentation/screens/login_screen.dart';
import 'package:booking/features/auth/presentation/widgets/accept_terms_text.dart';
import 'package:booking/features/auth/presentation/widgets/auth_head.dart';
import 'package:booking/features/auth/presentation/widgets/google_facebook_sign_in.dart';
import 'package:booking/features/auth/presentation/widgets/not_have_account.dart';
import 'package:booking/features/auth/presentation/widgets/register_text_fields/register_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late RegisterCubit test;
  @override
  void initState() {
    test = RegisterCubit.get(context);
    test.initControllers();
    super.initState();
  }

  @override
  void dispose() {
    test.nameController!.dispose();
    test.emailController!.dispose();
    test.passwordController!.dispose();
    test.passwordConfirmationController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterCreateUserSuccess) {
          showSnackBar(
            context: context,
            message: state.authResponse.status!.title!.en!,
            color: AppColors.teal,
          );
          if (state.authResponse.status!.type == "1") {
            Go.offAll(context: context, screen: const LoginScreen());
          }
        }
      },
      builder: (context, state) {
        final RegisterCubit cubit = RegisterCubit.get(context);
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
                    const AuthHead(title: AppStrings.signUp),
                    SizedBox(height: AppHeight.h30),
                    const GoogleFacebookSignIn(),
                    SizedBox(height: AppHeight.h20),
                    const SecondaryText(
                      text: AppStrings.logWithEmail,
                      isLight: true,
                    ),
                    SizedBox(height: AppHeight.h20),
                    RegisterTextFields(cubit: cubit),
                    SizedBox(height: AppHeight.h20),
                    if (state is RegisterCreateUserLoading)
                      const CustomCircleIndicator()
                    else
                      CustomButton(
                        fillColor: AppColors.teal,
                        text: AppStrings.signUp,
                        onPressed: () {
                          bool isNameValidate =
                              cubit.nameFormKey!.currentState!.validate();
                          bool isEmailValidate =
                              cubit.emailFormKey!.currentState!.validate();
                          bool isPasswordValidate =
                              cubit.passwordFormKey!.currentState!.validate();
                          bool isPasswordConfirmationValidate = cubit
                              .passwordConfirmationFormKey!.currentState!
                              .validate();

                          bool registerValidation = isNameValidate &&
                              isEmailValidate &&
                              isPasswordValidate &&
                              isPasswordConfirmationValidate;
                          debugPrint("$registerValidation");

                          if (registerValidation) {
                            cubit.registerUser(
                              registerBody: RegisterBodyModel(
                                name: cubit.nameController!.text,
                                email: cubit.emailController!.text,
                                password: cubit.passwordController!.text,
                                passwordConfirmation:
                                    cubit.passwordConfirmationController!.text,
                              ),
                            );
                          }
                        },
                      ),
                    SizedBox(height: AppHeight.h20),
                    const AcceptTermsText(),
                    SizedBox(height: AppHeight.h10),
                    const NotHaveAccount(),
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
