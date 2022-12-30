import 'package:booking/core/firebase/collections_keys.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseHelper {
  Future<UserCredential> createUserWithEmail({required AuthBody authBody});
  Future<UserCredential> signInUserWithEmail({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<CurrentUser> getCurrentUser({required String uid});
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
  Future<CurrentUser> getCurrentUser({required String uid}) async {
    final result = await _db.collection(Collections.users).doc(uid).get();
    CurrentUser user = CurrentUser.fromJson(result.data()!);
    return user;
  }
}
