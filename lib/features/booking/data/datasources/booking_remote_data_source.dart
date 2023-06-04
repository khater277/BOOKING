import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';

abstract class BookingRemoteDataSource {
  Future<List<BookingDetailsModel>> getMyBookings();
  Future<void> updateMyBooking({required UpdateMyBookingParams params});
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final FirebaseHelper firebaseHelper;

  BookingRemoteDataSourceImpl({required this.firebaseHelper});
  @override
  Future<List<BookingDetailsModel>> getMyBookings() {
    return firebaseHelper.getMyBookings();
  }

  @override
  Future<void> updateMyBooking({required UpdateMyBookingParams params}) {
    return firebaseHelper.updateMyBooking(params: params);
  }
}
