import 'package:booking/core/apis/booking/booking_api.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredential> registerUser({required AuthBody authBody});
  Future<UserCredential> loginUser({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<CurrentUser> getCurrentUser({required String uid});
  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInWithFacebook();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final BookingApi bookingApi;
  final FirebaseHelper firebaseHelper;

  AuthRemoteDataSourceImpl(
      {required this.bookingApi, required this.firebaseHelper});

  /// REGISTER
  @override
  Future<UserCredential> registerUser({required AuthBody authBody}) {
    return firebaseHelper.createUserWithEmail(authBody: authBody);
  }

  /// LOGIN
  @override
  Future<UserCredential> loginUser({required AuthBody authBody}) {
    return firebaseHelper.signInUserWithEmail(authBody: authBody);
  }

  @override
  Future<void> addUserToFirestore({required CurrentUser user}) {
    return firebaseHelper.addUserToFirestore(user: user);
  }

  @override
  Future<CurrentUser> getCurrentUser({required String uid}) async {
    return firebaseHelper.getCurrentUser(uid: uid);
  }

  @override
  Future<UserCredential?> signInWithGoogle() {
    return firebaseHelper.signInWithGoogle();
  }

  @override
  Future<UserCredential?> signInWithFacebook() {
    return firebaseHelper.signInWithFacebook();
  }
}
