import 'package:bloc/bloc.dart';
import 'package:booking/features/profile/data/models/pofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  static ProfileCubit get(BuildContext context) => BlocProvider.of(context);

  List<ProfileItemModel> profileItemsData = [
    ProfileItemModel(name: "Change Password", icon: Icons.lock),
    ProfileItemModel(name: "Invite Friend", icon: Icons.people),
    ProfileItemModel(name: "Credit & Coupons", icon: Icons.card_giftcard),
    ProfileItemModel(name: "Help Center", icon: Icons.info_rounded),
    ProfileItemModel(name: "Payment", icon: Icons.wallet),
    ProfileItemModel(name: "Setting", icon: Icons.settings),
  ];
}
