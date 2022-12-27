import 'package:booking/features/profile/cubit/profile_states.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());
  static ProfileCubit get(BuildContext context) => BlocProvider.of(context);
}
