import 'package:booking/core/firebase/collections_keys.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:booking/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uuid/uuid.dart';

abstract class FirebaseHelper {
  Future<UserCredential> createUserWithEmail({required AuthBody authBody});
  Future<UserCredential> signInUserWithEmail({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  });
  Future<CurrentUser> getCurrentUser({required String uid});
  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInWithFacebook();
  Future<List<BookingDetailsModel>> getMyBookings();
}

class FirebaseHelperImpl implements FirebaseHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Future<UserCredential> createUserWithEmail(
      {required AuthBody authBody}) async {
    return await _auth.createUserWithEmailAndPassword(
      email: authBody.email,
      password: authBody.password,
    );
  }

  @override
  Future<UserCredential> signInUserWithEmail(
      {required AuthBody authBody}) async {
    return await _auth.signInWithEmailAndPassword(
      email: authBody.email,
      password: authBody.password,
    );
  }

  @override
  Future<void> addUserToFirestore({required CurrentUser user}) {
    return _db.collection(Collections.users).doc(user.uid!).set(user.toJson());
  }

  @override
  Future<void> addBookingToFirestore({
    required String bookingId,
    required String userId,
    required BookingDetailsModel bookingDetails,
  }) async {
    return _db
        .collection(Collections.users)
        .doc(userId)
        .collection(Collections.bookings)
        .doc(bookingId)
        .set(bookingDetails.toJson());
  }

  @override
  Future<CurrentUser> getCurrentUser({required String uid}) async {
    final result = await _db.collection(Collections.users).doc(uid).get();
    CurrentUser user = CurrentUser.fromJson(result.data()!);
    return user;
  }

  @override
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    UserCredential? userCredential;

    try {
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );
      return _auth.signInWithCredential(credential);
    } catch (error) {
      return userCredential;
    }
  }

  @override
  Future<UserCredential?> signInWithFacebook() async {
    UserCredential? userCredential;

    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      return _auth.signInWithCredential(facebookAuthCredential);
    } catch (error) {
      return userCredential;
    }
  }

  @override
  Future<List<BookingDetailsModel>> getMyBookings() async {
    List<BookingDetailsModel> result = [];
    final response = await _db
        .collection(Collections.users)
        .doc(HiveHelper.getCurrentUser()!.uid)
        .collection(Collections.bookings)
        .get();
    final list = response.docs;
    for (var element in list) {
      result.add(BookingDetailsModel.fromJson(element.data()));
    }
    return result;
  }
}
