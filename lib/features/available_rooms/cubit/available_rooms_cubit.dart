import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_rooms_state.dart';
part 'available_rooms_cubit.freezed.dart';

class AvailableRoomsCubit extends Cubit<AvailableRoomsState> {
  AvailableRoomsCubit() : super(const AvailableRoomsState.initial());
}
