import 'package:booking/core/shared_widgets/text.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
import 'package:booking/features/profile/cubit/profile_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return const Scaffold(
          body: Center(child: LargeHeadText(text: "PROFILE SCREEN")),
        );
      },
    );
  }
}
