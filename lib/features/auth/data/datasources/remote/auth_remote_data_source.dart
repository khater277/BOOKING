import 'package:booking/core/api/dio_helper/dio_helper.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredential> registerUser({required AuthBody authBody});
  Future<UserCredential> loginUser({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<CurrentUser> getCurrentUser({required String uid});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioHelper dioHelper;
  final FirebaseHelper firebaseHelper;

  AuthRemoteDataSourceImpl(
      {required this.dioHelper, required this.firebaseHelper});

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
}
