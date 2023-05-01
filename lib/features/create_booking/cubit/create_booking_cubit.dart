import 'package:booking/core/utils/constants.dart';

import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/body/room.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/body/holder.dart';
import 'package:booking/features/booking/data/models/create_booking/body/room.dart';
import 'package:booking/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:booking/features/create_booking/data/models/body/hotels.dart';
import 'package:booking/features/create_booking/data/models/body/occupancy.dart';
import 'package:booking/features/create_booking/data/models/body/stay.dart';
import 'package:booking/features/create_booking/data/models/response/room.dart';
import 'package:booking/features/create_booking/domain/usecases/check_availability_use_case.dart';
import 'package:booking/features/booking/domain/usecases/check_rate_use_case.dart';
import 'package:booking/features/booking/domain/usecases/create_booking_use_case.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'create_booking_state.dart';
part 'create_booking_cubit.freezed.dart';

class CreateBookingCubit extends Cubit<CreateBookingState> {
  final CheckAvailabilityUseCase checkAvailabilityUseCase;
  final CheckRateUseCase checkRateUseCase;
  final CreateBookingUseCase createBookingUseCase;
  CreateBookingCubit(
      {required this.checkAvailabilityUseCase,
      required this.checkRateUseCase,
      required this.createBookingUseCase})
      : super(const CreateBookingState.initial());

  static CreateBookingCubit get(context) => BlocProvider.of(context);

  DateRangePickerController? dateRangePickerController;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? checkInController;
  TextEditingController? checkOutController;
  SingleValueDropDownController? adultsController;
  SingleValueDropDownController? childrenController;

  List<DropDownValueModel> dropDownList = [
    const DropDownValueModel(name: '0', value: 0),
    const DropDownValueModel(name: '1', value: 1),
    const DropDownValueModel(name: '2', value: 2),
    const DropDownValueModel(name: '3', value: 3),
    const DropDownValueModel(name: '4', value: 4),
  ];

  void initCreateBookingControllers() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    checkInController = TextEditingController();
    checkOutController = TextEditingController();
    adultsController = SingleValueDropDownController();
    childrenController = SingleValueDropDownController();
    emit(const CreateBookingState.initBookingDetailsControllers());
  }

  void disposeCreateBookingControllers() {
    firstNameController!.dispose();
    lastNameController!.dispose();
    checkInController!.dispose();
    checkOutController!.dispose();
    adultsController!.dispose();
    childrenController!.dispose();
    emit(const CreateBookingState.disposeBookingDetailsControllers());
  }

  void initCalenderControllers() {
    dateRangePickerController = DateRangePickerController();
    emit(const CreateBookingState.initCalenderControllers());
  }

  void disposeCalenderControllers() {
    dateRangePickerController!.dispose();
    emit(const CreateBookingState.disposeCalenderControllers());
  }

  void selectDate({
    required DateTime date,
    required Check check,
  }) {
    if (check == Check.IN) {
      checkInController!.text = DateFormat('yyyy-MM-dd').format(date);
    } else if (check == Check.OUT) {
      checkOutController!.text = DateFormat('yyyy-MM-dd').format(date);
    }
    emit(const CreateBookingState.selectDate());
  }

  // List<AvailableRoom> availableRooms = [];
  CheckAvailabilityBody? checkAvailabilityBody;
  void checkAvailableRooms({
    required int hotelId,
  }) async {
    emit(const CreateBookingState.checkAvailableRoomsLoading());
    checkAvailabilityBody = CheckAvailabilityBody(
      stay: Stay(
        checkIn: checkInController!.text,
        checkOut: checkOutController!.text,
      ),
      occupancies: [
        Occupancy(
          rooms: 1,
          adults: adultsController!.dropDownValue!.value!,
          children: childrenController!.dropDownValue!.value!,
        ),
      ],
      availabilityBodyHotels: Hotels(availabilityBodyHotel: [hotelId]),
    );

    final response =
        await checkAvailabilityUseCase.call(checkAvailabilityBody!);
    response.fold((failure) {
      emit(CreateBookingState.checkAvailableRoomsError(failure.getMessage()));
      debugPrint("ERROR IN ======> CHECK AVAILABILITY");
    }, (checkAvailabilityResponse) async {
      debugPrint("=====>${checkAvailabilityResponse.availableHotels!.total}");
      if (checkAvailabilityResponse.availableHotels!.total != 0) {
        List<AvailableRoom> availableRooms = checkAvailabilityResponse
            .availableHotels!.availableHotels![0].availableRooms!;
        emit(CreateBookingState.findAvailableRooms(
            availableRooms, checkAvailabilityBody!));
      } else {
        emit(const CreateBookingState.noAvailableRooms());
      }
    });
  }

  void createBooking({
    required CheckAvailabilityBody checkAvailabilityBody,
  }) async {
    final response = await checkAvailabilityUseCase.call(checkAvailabilityBody);
    response.fold(
      (failure) {
        debugPrint("ERROR IN ======> CHECK AVAILABILITY");
      },
      (checkAvailabilityResponse) async {
        debugPrint("=====>${checkAvailabilityResponse.availableHotels!.total}");
        if (checkAvailabilityResponse.availableHotels!.total != 0) {
          List<RateRoom> rateRooms = [
            RateRoom(
                rateKey: checkAvailabilityResponse
                    .availableHotels!
                    .availableHotels![0]
                    .availableRooms![0]
                    .availableRates![0]
                    .rateKey)
          ];

          CheckRateBody checkRateBody = CheckRateBody(rateRooms: rateRooms);
          final response = await checkRateUseCase.call(checkRateBody);
          response.fold(
            (failure) {
              debugPrint("ERROR IN ======> CHECK RATE");
            },
            (checkRateResponse) async {
              // checkRateResponse.rateHotel!.
              List<BookingRoom> list = [
                BookingRoom(
                  rateKey: checkRateResponse
                      .rateHotel!.rateRooms!.first.rates!.first.rateKey,
                )
              ];
              CreateBookingBody createBookingBody = CreateBookingBody(
                holder: Holder(
                  name: firstNameController!.text,
                  surname: lastNameController!.text,
                ),
                bookingRooms: list,
                clientReference: "clientReference",
                remark: "remark",
                tolerance: 1,
              );
              final response =
                  await createBookingUseCase.call(createBookingBody);
              response.fold(
                (failure) {
                  debugPrint("ERROR IN ======> CREATE BOOKING");
                },
                (createBookingResponse) {
                  debugPrint(
                      "BOOKING CREATED ====> ${createBookingResponse.booking!.holder.toString()}");
                },
              );
            },
          );
        } else {
          debugPrint("CAN'T CREATE BOOKING");
        }
      },
    );
  }
}
