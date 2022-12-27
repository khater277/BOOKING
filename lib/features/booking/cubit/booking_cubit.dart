import 'package:booking/features/booking/cubit/booking_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitialState());

  static BookingCubit get(BuildContext context) => BlocProvider.of(context);

  // TabController tabController = TabController(length: length, vsync: vsync)
}
