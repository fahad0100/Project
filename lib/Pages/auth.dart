import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  AuthService(this._firebaseAuth);


  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

//عملية تسجيل الدخول

  Future<String> SignIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // return await _firebaseAuth.currentUser.uid.toString().trim() as String;
      return "true";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//عملية انشاء حساب
  Future<String> SignUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Sign Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//تسجيل الخروج
  Future<String> SignOut() async {
    try {
      await _firebaseAuth.signOut();
      return "Sign Out";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//الحصول على الايدي بعد تسجيل الدخول
  getUserID() {
    final User user = _firebaseAuth.currentUser;
    return user.uid;
  }

  ID() async {
    return  await _firebaseAuth.currentUser.uid.toString().trim();
  }
}
