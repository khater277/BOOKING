import 'package:booking/features/home/cubit/home_cubit.dart';
import 'package:booking/features/home/presentation/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    // HotelsCubit.get(context).pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final HomeCubit cubit = HomeCubit.get(context);
        return Scaffold(
          body: cubit.pages[cubit.currentIndex],
          // cubit.pages[cubit.currentIndex],
          extendBody: true,
          bottomNavigationBar: AppBottomNavBar(cubit: cubit),
        );
      },
    );
  }
}
