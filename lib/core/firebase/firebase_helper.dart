import 'package:booking/core/firebase/collections_keys.dart';
import 'package:booking/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:booking/features/auth/data/models/current_user/current_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class FirebaseHelper {
  Future<UserCredential> createUserWithEmail({required AuthBody authBody});
  Future<UserCredential> signInUserWithEmail({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<CurrentUser> getCurrentUser({required String uid});
  Future<UserCredential> signInWithGoogle();
  Future<UserCredential?> signInWithFacebook();
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

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await _auth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential?> signInWithFacebook() async {
    UserCredential? userCredential;
    final LoginResult loginResult = await FacebookAuth.instance.login();
    try {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      return _auth.signInWithCredential(facebookAuthCredential);
    } catch (error) {
      return userCredential;
    }
  }
}
