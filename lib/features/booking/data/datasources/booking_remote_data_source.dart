import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';

abstract class BookingRemoteDataSource {
  Future<List<BookingDetailsModel>?> getMyBookings();
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final FirebaseHelper firebaseHelper;

  BookingRemoteDataSourceImpl({required this.firebaseHelper});
  @override
  Future<List<BookingDetailsModel>?> getMyBookings() {
    return firebaseHelper.getMyBookings();
  }
}
