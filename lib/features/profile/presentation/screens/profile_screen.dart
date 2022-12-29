import 'package:booking/core/utils/app_values.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
import 'package:booking/features/profile/presentation/widgets/head.dart';
import 'package:booking/features/profile/presentation/widgets/items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        final ProfileCubit cubit = ProfileCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppWidth.w15,
              ).add(EdgeInsets.only(top: AppHeight.h30)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ProfileHead(),
                    SizedBox(height: AppHeight.h40),
                    ProfileItemsList(cubit: cubit),
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
