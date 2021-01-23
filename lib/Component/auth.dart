import 'package:firebase_auth/firebase_auth.dart';

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
      print(e.code);
      if (e.code == "invalid-email") {
        return "البريد الالكتروني غير صحيح";
      } else if (e.code == "user-not-found") {
        return "لم يتم ايجاد الحساب";
      } else if (e.code == "wrong-password") {
        return "البريد الالكتروني او كلمة السر خطأ";
      } else if (e.code == "unknown") {
        return "هنالك خطا غير معروف";
      }
      return e.message;
    }
  }

//عملية انشاء حساب
  Future<String> SignUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "true";
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return "البريد الالكتروني موجود";
      } else if (e.code == "invalid-email") {
        return "البريد الالكتروني غير صحيح";
      } else if (e.code == "weak-password") {
        return "كلمة السر ضعيفه";
      }
      return e.message;
    }
  }
//----------------------------------------------------------------------
//تسجيل الخروج
  Future<String> SignOut() async {
    try {
      await _firebaseAuth.signOut();
      return "Sign Out";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
//----------------------------------------------------------------------

  Future<String> resetPassword(String email) async {
    try{
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return "تحقق من بريدك الالكتروني";
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == "invalid-email") {
        return "البريد الالكتروني غير صحيح";
      } else if (e.code == "user-not-found") {
        return "لم يتم ايجاد الحساب";
      } else if (e.code == "wrong-password") {
        return "البريد الالكتروني او كلمة السر خطأ";
      } else if (e.code == "unknown") {
        return "هنالك خطا غير معروف";
      }
      return e.message;
    }
    
  }

//----------------------------------------------------------------------

//الحصول على الايدي بعد تسجيل الدخول
  getUserID() {
    final User user = _firebaseAuth.currentUser;
    return user.uid;
  }

  ID() async {
    return await _firebaseAuth.currentUser.uid.toString().trim();
  }
}
